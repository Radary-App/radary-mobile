import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart'; // إضافة هذا السطر
import 'package:radary/features/home/logic/cubit/addproplem_state.dart';
import '../../../../core/helpers/cach/cach_helper.dart';
import '../../../../core/helpers/cach/constants.dart';
import '../../../details/ui/screens/image_dettails_view.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/addproplem_request_body.dart';
import '../../data/repo/add_proplem_repo.dart';

class AddProblemCubit extends Cubit<AddproplemState> {
  final AddProblemRepo _repo;
  final ImagePicker _picker = ImagePicker();

  AddProblemCubit(this._repo) : super(const AddproplemState.initial());

  XFile? file;
  String coordinates = '38.909789,35.203289';

  Future<File?> pickImage(BuildContext context) async {
    try {
      file = await _picker.pickImage(source: ImageSource.camera);
      if (file != null) {
        final File image = File(file!.path);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ImageDettailsView(image: image);
        }));
        await addProblem(context);
        return image;
      } else {
        showErrorSnackBar('No Image selected', context);
        return null;
      }
    } catch (e) {
      showErrorSnackBar('Error picking Image: $e', context);
      return null;
    }
  }

  Future<void> addProblem(BuildContext context) async {
    if (file == null) {
      showErrorSnackBar('Please select an image first', context);
      return;
    }

    String? token =
        await CacheHelper.getSecuredString(SherdPreferencesKeys.userToken);
    print("Retrieved Token: $token");

    // إعداد FormData
    FormData formData = FormData.fromMap({
      'photo': await MultipartFile.fromFile(file!.path),
      'coordinates': coordinates,
    });

    emit(const AddproplemState.loading());

    final result = await _repo.addProblem(formData);
    result.when(
      success: (response) {
        emit(AddproplemState.success(response));
      },
      failure: (error) {
        emit(AddproplemState.error(
            error: error.apiErrorModel.error ?? 'An unknown error occurred'));
      },
    );
  }

  void showErrorSnackBar(String message, BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 1),
        ),
      );
}
