import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/sign_up_request_body.dart';
import '../../data/models/sign_up_response.dart';
import '../../data/repo/sign_up_repo.dart';
import 'sigin_up_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
 
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confarmPasswordController = TextEditingController();
  
     final PageController pageController = PageController();

  final formKey = GlobalKey<FormState>();


  void emitSignupStates() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(const SignupState.signupLoading());
      final response = await _signupRepo.signup(
        SignupRequestBody(
          email: emailController.text,
          password: passwordController.text,
          firstName: fNameController.text,
          lastName: lNameController.text,
          phone: phoneController.text,
          
        ),
      );
      response.when(success: (signupResponse) {
        emit(SignupState.signupSuccess(signupResponse));
      }, failure: (error) {
        emit(SignupState.signupError(error: error.apiErrorModel.message ?? 'An error occurred'));
      });
    } else {
      emit(const SignupState.signupError(error: 'Please fill in all required fields.'));
    }
  }

  @override
  Future<void> close() {
    fNameController.dispose();
    lNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    return super.close();
  }
}