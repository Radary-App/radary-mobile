import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));

    }, failure: (error) {
      emit(
        LoginState.error(error: error.apiErrorModel.error ?? ''),
      );
    });
  }

  // Dispose method to clean up controllers
  @override
  Future<void> close() {
    phoneController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
