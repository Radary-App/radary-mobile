import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart'; 
import 'package:geolocator/geolocator.dart'; 
import 'package:radary/features/home/logic/cubit/add_emergency_state.dart';
import '../../../../core/helpers/cach/cach_helper.dart';
import '../../../../core/helpers/cach/constants.dart';
import '../../../ad_details/ui/screens/image_dettails_view_emergncy.dart';
import '../../../ad_details/ui/screens/image_dettails_view_proplem.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/addproplem_request_body.dart';
import '../../data/repo/add_energncy_repo.dart';
import '../../data/repo/add_proplem_repo.dart';
//
class AddEmergencyCubit extends Cubit<AddEmergencyState> {
  final AddEmergncyRepo _repo;
  final ImagePicker _picker = ImagePicker();

  AddEmergencyCubit(this._repo) : super(const AddEmergencyState.initial());

  XFile? file;
  String coordinates = '';

  Future<void> getUserLocation(context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showErrorSnackBar('Location services are disabled.', context);
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showErrorSnackBar('Location permission denied.', context);
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
        final File image = File(file!.path);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ImageDettailsViewEmergincy(image: image);
        }));
        await getUserLocation(context); // استدعاء دالة الموقع بعد التقاط الصورة
        await addProblem(context);
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

  Future<void> addProblem(BuildContext context) async {
    if (file == null) {
      showErrorSnackBar('Please select an image first', context);
      return;
    }

    String? token = await CacheHelper.sharedPreferences.getString(SherdPreferencesKeys.userToken);
    print("Retrieved Token: $token");

    // إعداد FormData
    FormData formData = FormData.fromMap({
      'photo': await MultipartFile.fromFile(file!.path),
      'coordinates': coordinates,
    });

    emit(const AddEmergencyState.loading());

    final result = await _repo.addEmergancy(formData);
    result.when(
      success: (response) {
        emit(AddEmergencyState.success(response));
      },
      failure: (error) {
        emit(AddEmergencyState.error(
            error: error.apiErrorModel.error ?? 'An unknown error occurred'));
      },
    );
  }

  void showErrorSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}