import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/cach/cach_helper.dart';
import '../../../../core/helpers/cach/constants.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  // Constructor with initial state
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  // TextEditingControllers for input fields
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Method to handle login logic
  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());

    // Perform login request
    final response = await _loginRepo.login(loginRequestBody);

    // Handle response
    response.when(success: (loginResponse) async {
      // Save token to shared preferences
      await saveToken(loginResponse.token!);
      print(loginResponse.token);
      DioFactory.addDioHeaders();
      // Emit success state with the response
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      // Emit error state with the error message
      emit(
        LoginState.error(
            error: error.apiErrorModel.error ?? 'An unknown error occurred'),
      );
    });
  }

  // Save token to shared preferences
  Future<void> saveToken(String token) async {
    await CacheHelper.sharedPreferences.setString(SherdPreferencesKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
    DioFactory.addDioHeaders();
  }

  // Dispose method to clean up controllers
  @override
  Future<void> close() {
    phoneController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
