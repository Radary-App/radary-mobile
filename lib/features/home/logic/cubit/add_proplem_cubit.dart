import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/features/home/logic/cubit/add_emergency_state.dart';
import 'package:radary/features/home/logic/cubit/add_proplem_state.dart';
import '../../../../core/helpers/cach/cach_helper.dart';
import '../../../../core/helpers/cach/constants.dart';
import '../../../../core/routing/route.dart';
import '../../../problem_review/logic/cubit/emergency_problem_response_cubit.dart';
import '../../data/repo/add_proplem_repo.dart';

class AddProblemCubit extends Cubit<AddProblemState> { // Corrected name
  final AddProblemRepo _repo;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController descriptionController = TextEditingController();

  AddProblemCubit(this._repo) : super(const AddProblemState.initial());

  XFile? file;
  File? image;
  String coordinates = '';

  Future<void> getUserLocation(BuildContext context) async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      _showErrorSnackBar('Location services are disabled.', context);
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (![
        LocationPermission.whileInUse,
        LocationPermission.always
      ].contains(permission)) {
        _showErrorSnackBar('Location permission denied.', context);
        return;
      }
    }

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    coordinates = '${position.latitude},${position.longitude}';
  }

  Future<File?> pickImage(BuildContext context) async {
    try {
      file = await _picker.pickImage(source: ImageSource.camera);
      if (file != null) {
        image = File(file!.path);
        context.pushNamed(Routes.imageDetails, arguments: image);
        return image;
      } else {
        _showErrorSnackBar('No image selected', context);
        return null;
      }
    } catch (e) {
      _showErrorSnackBar('Error picking image: $e', context);
      return null;
    }
  }

  Future<void> addProblem(BuildContext context, XFile? file) async {
    if (file == null) {
      _showErrorSnackBar('Please select an image first', context);
      return;
    }
    await getUserLocation(context);

    if (coordinates.isEmpty) {
      _showErrorSnackBar('Location not found. Please check location services.', context);
      return;
    }

    String? token = CacheHelper.sharedPreferences.getString(SherdPreferencesKeys.userToken);
    if (token == null) {
      _showErrorSnackBar('User not authenticated', context);
      return;
    }

    FormData formData = FormData.fromMap({
      'photo': await MultipartFile.fromFile(file.path),
      'coordinates': coordinates,
      'user_description': descriptionController.text,
    });

    emit(const AddProblemState.loading());

    try {
      final result = await _repo.addProblem(formData);
      result.when(
        success: (response) {
          emit(AddProblemState.success(response));
          context.pushNamed(Routes.confirmView);
          context.read<EmergencyProblemResponseCubit>().getData();
        },
        failure: (error) {
          emit(AddProblemState.error(error: error.apiErrorModel.error ?? 'An unknown error occurred'));
        },
      );
    } catch (e) {
      emit(AddProblemState.error(error: 'An error occurred while sending the request: $e'));
    }
  }

  void _showErrorSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3), // Shortened duration
      ),
    );
  }
}