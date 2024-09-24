import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/add_text_form_field.dart';
import '../../../../core/widgets/title_left.dart';
import '../../../../generated/l10n.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    final loginCubit = context.read<LoginCubit>();
    passwordController = loginCubit.passwordController;
    formKey = loginCubit.formKey;
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
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            },
            controller: context.read<LoginCubit>().phoneController,
          ),
       
          TitleLeft(title: S.of(context).Password),
          AppTextFormField(
              controller: passwordController,
              hintText: S.of(context).Password,
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
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
              })
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
