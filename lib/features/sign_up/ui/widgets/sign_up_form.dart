import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/util/app_regex.dart';
import '../../../../core/helpers/util/spacing.dart';
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

  @override
  void initState() {
    super.initState();
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    final signupCubit = context.read<SignupCubit>();
    signupCubit.passwordController.addListener(() {
      setState(() {
        hasLowercase =
            AppRegex.hasLowerCase(signupCubit.passwordController.text);
        hasUppercase =
            AppRegex.hasUpperCase(signupCubit.passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(signupCubit.passwordController.text);
        hasNumber = AppRegex.hasNumber(signupCubit.passwordController.text);
        hasMinLength =
            AppRegex.hasMinLength(signupCubit.passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final signupCubit = context.read<SignupCubit>();

    return Form(
      key: signupCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  TitleLeft(
                    title: S.of(context).FirstName,
                  ),
                  SizedBox(
                    width: 180.w,
                    child: AppTextFormField(
                      hintText: S.of(context).FirstName,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).Please_enter_a_valid_first_name;
                        }
                        return null;
                      },
                      controller: context.read<SignupCubit>().fNameController,
                    ),
                  ),
                ],
              ),

              // Add vertical spacing and continue with other input fields
              horizontalSpace(8),
              Column(
                children: [
                  TitleLeft(
                    title: S.of(context).LastName,
                  ),
                  SizedBox(
                    width: 180.w,
                    child: AppTextFormField(
                      hintText: S.of(context).LastName,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).Please_enter_a_valid_last_name;
                        }
                        return null;
                      },
                      controller: context.read<SignupCubit>().lNameController,
                    ),
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(20),
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
                return S.of(context).Please_enter_a_valid_phone_number;
              }
              return null;
            },
            controller: context.read<SignupCubit>().phoneController,
          ),
          verticalSpace(20),
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
                  return S.of(context).Please_enter_a_valid_password;
                } else if (!AppRegex.hasLowerCase(value)) {
                  return S.of(  context).Password_must_contain_at_least_one_lowercase_letter;
                } else if (!AppRegex.hasUpperCase(value)) {
                  return S.of(context).Password_must_contain_at_least_one_uppercase_letter;
                } else if (!AppRegex.hasSpecialCharacter(value)) {
                  return S.of(context).Password_must_contain_at_least_one_special_character;
                } else if (!AppRegex.hasNumber(value)) {
                  return S.of(  context).Password_must_contain_at_least_one_number;
                } else if (!AppRegex.hasMinLength(value)) {
                  return S.of(context).Password_must_be_at_least_8_characters_long;
                }
                return null;
              }),
          verticalSpace(20),
          AppTextFormField(
            controller: context.read<SignupCubit>().confirmPasswordController,
            hintText: S.of(context).ConfirmPassword,
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).PleaseEnterPasswordAgain;
              } else if (value != signupCubit.passwordController.text) {
                return S.of(context).PasswordsDoNotMatch;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
