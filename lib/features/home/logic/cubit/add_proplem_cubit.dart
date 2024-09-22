import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/features/home/logic/cubit/add_proplem_state.dart';
import '../../../../core/helpers/cach/cach_helper.dart';
import '../../../../core/helpers/cach/constants.dart';
import '../../../../core/routing/route.dart';
import '../../../details/ui/screens/image_dettails_view.dart';
import '../../data/repo/add_proplem_repo.dart';

class AddEmergencyCubit extends Cubit<AddEmergencyState> {
  final AddProblemRepo _repo;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController descriptionController = TextEditingController();

  AddEmergencyCubit(this._repo) : super(const AddEmergencyState.initial());

  XFile? file;
  File? imagee;
  String coordinates = '';

  Future<void> getUserLocation(BuildContext context) async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showErrorSnackBar('Location services are disabled.', context);
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showErrorSnackBar('Location permission denied.', context);
        return;
      }
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    coordinates = '${position.latitude},${position.longitude}';
  }

  Future<File?> pickImage(BuildContext context) async {
    try {
      file = await _picker.pickImage(source: ImageSource.camera);
      if (file != null) {
        final File image = File(file!.path);

        imagee = image;


        context.pushNamed(
          Routes.imageDetails,
          arguments: image, 
        );
// addProblem(context);
        return image;
      } else {
        showErrorSnackBar('No image selected', context);
        return null;
      }
    } catch (e) {
      showErrorSnackBar('Error picking image: $e', context);
      return null;
    }
  }

  Future<void> addProblem(BuildContext context, XFile? file,  ) async {
    if (file == null) {
      showErrorSnackBar('Please select an image first', context);
      return;
    }
        await getUserLocation(context);

    if (coordinates.isEmpty) {
      showErrorSnackBar(
          'Location not found. Please check location services.', context);
      return;
    }

    String? token =
        CacheHelper.sharedPreferences.getString(SherdPreferencesKeys.userToken);
    if (token == null) {
      showErrorSnackBar('User not authenticated', context);
      return;
    }

    print("Retrieved Token: $token");

    FormData formData = FormData.fromMap({
      'photo': await MultipartFile.fromFile(file.path),
      'coordinates': coordinates,
      'user_description': descriptionController.text,
    });

    emit(const AddEmergencyState.loading());

    try {
      final result = await _repo.addProblem(formData);
      result.when(
        success: (response) {
          emit(AddEmergencyState.success(response));
          context.pushNamed(Routes.confirmView);
        },
        failure: (error) {
          emit(AddEmergencyState.error(
              error: error.apiErrorModel.error ?? 'An unknown error occurred'));
        },
      );
    } catch (e) {
      emit(AddEmergencyState.error(
          error: 'An error occurred while sending the request: $e'));
    }
  }

  // Future<void> addProblem(BuildContext context) async {
  //   if (file == null) {
  //     showErrorSnackBar('Please select an image first', context);
  //     return;
  //   }

  //   String? token =
  //       CacheHelper.sharedPreferences.getString(SherdPreferencesKeys.userToken);
  //   print("Retrieved Token: $token");

  //   // إعداد FormData
  //   FormData formData = FormData.fromMap({
  //     'photo': await MultipartFile.fromFile(file!.path),
  //     'coordinates': coordinates,
  //     'user_description': descriptionController.text,
  //   });

  //   emit(const AddEmergencyState.loading());

  //   final result = await _repo.addProblem(formData);
  //   result.when(
  //     success: (response) {
  //       emit(AddEmergencyState.success(response));
  //     },
  //     failure: (error) {
  //       emit(AddEmergencyState.error(
  //         error: error.apiErrorModel.error ?? 'An unknown error occurred',
  //       ));
  //     },
  //   );
  // }

  void showErrorSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 20),
      ),
    );
  }
}
