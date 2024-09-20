import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/features/sign_up/logic/cubit/sigin_up_state.dart';
import '../../data/models/sign_up_request_body.dart';
import '../../data/repo/sign_up_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;

  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController(); // Fixed typo
  final formKey = GlobalKey<FormState>();




  // Method to handle signup logic
  void emitSignupStates() async {
    if (formKey.currentState?.validate() ?? false) {
      if (passwordController.text != confirmPasswordController.text) {
        emit(const SignupState.signupError(error: 'Passwords do not match!'));
        return;
      }

      emit(const SignupState.signupLoading());

      final response = await _signupRepo.signup(
        SignupRequestBody(
          password: passwordController.text,
          firstName: fNameController.text,
          lastName: lNameController.text,
          phoneNumber: phoneController.text,
          username: fNameController.text+lNameController.text, 
        ),
      );

      response.when(
        success: (signupResponse) {
          emit(SignupState.signupSuccess(signupResponse));
        },
        failure: (error) {
          emit(SignupState.signupError(
            error: error.apiErrorModel.error ?? 'An error occurred',
          ));
        },
      );
    } else {
      emit(const SignupState.signupError(
          error: 'Please fill in all required fields.'));
    }
  }

  @override
  Future<void> close() {
    // Ensure controllers are disposed when no longer needed.
    fNameController.dispose();
    lNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose(); // Fixed typo here too
    return super.close();
  }
}