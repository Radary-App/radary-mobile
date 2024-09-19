import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/add_text_form_field.dart';
import '../../../../core/widgets/title_left.dart';
import '../../../../generated/l10n.dart';
import '../../logic/cubit/sigin_up_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     TitleLeft(
              //       title: S.of(context).FirstName,
              //     ),
              //     SizedBox(
              //       width: 180.w,
              //       child: AppTextFormField(
              //         hintText: S.of(context).FirstName,
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'Please enter a valid firstName';
              //           }
              //         },
              //         controller: context.read<SignupCubit>().fNameController,
              //       ),
              //     ),
              //   ],
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     TitleLeft(
              //       title: S.of(context).LastName,
              //     ),
              //     SizedBox(
              //       width: 180.w,
              //       child: AppTextFormField(
              //         hintText: S.of(context).LastName,
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'Please enter a valid lastName';
              //           }
              //         },
              //         controller: context.read<SignupCubit>().lNameController,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
          verticalSpace(18),
          TitleLeft(
            title: S.of(context).Phone_Number,
          ),
          AppTextFormField(
            hintText: S.of(context).Phone_Number,
            isNumericKeyboard: true,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            controller: context.read<SignupCubit>().phoneController,
          ),
          verticalSpace(18),
          TitleLeft(
            title: S.of(context).EnterEmail,
          ),
          AppTextFormField(
            hintText: S.of(context).EnterEmail,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
          verticalSpace(18),
          TitleLeft(
            title: S.of(context).Password,
          ),
          AppTextFormField(
              controller: context.read<SignupCubit>().passwordController,
              hintText: S.of(context).Password,
              isObscureText: isPasswordObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordObscureText = !isPasswordObscureText;
                  });
                },
                child: Icon(
                  isPasswordObscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'يرجى إدخال كلمة مرور';
                } else if (!AppRegex.hasLowerCase(value)) {
                  return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل';
                } else if (!AppRegex.hasUpperCase(value)) {
                  return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل';
                } else if (!AppRegex.hasSpecialCharacter(value)) {
                  return 'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل';
                } else if (!AppRegex.hasNumber(value)) {
                  return 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل';
                } else if (!AppRegex.hasMinLength(value)) {
                  return 'يجب أن تكون كلمة المرور على الأقل 8 أحرف طويلة';
                }
                return null;
              }),
          verticalSpace(24),
          AppTextFormField(
              controller: context.read<SignupCubit>().passwordController,
              hintText: S.of(context).ConfirmPassword,
              isObscureText: isPasswordObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordObscureText = !isPasswordObscureText;
                  });
                },
                child: Icon(
                  isPasswordObscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'يرجى إدخال كلمة مرور';
                } else if (!AppRegex.hasLowerCase(value)) {
                  return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل';
                } else if (!AppRegex.hasUpperCase(value)) {
                  return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل';
                } else if (!AppRegex.hasSpecialCharacter(value)) {
                  return 'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل';
                } else if (!AppRegex.hasNumber(value)) {
                  return 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل';
                } else if (!AppRegex.hasMinLength(value)) {
                  return 'يجب أن تكون كلمة المرور على الأقل 8 أحرف طويلة';
                }else if(passwordController.text != context.read<SignupCubit>().passwordController.text){
                  return 'كلمة المرور غير متطابقة';
                }
                return null;
              }),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
