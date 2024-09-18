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
          TitleLeft(title: S.of(context).EnterEmail),
          AppTextFormField(
            hintText: S.of(context).EnterEmail,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'الرجاء إدخال بريد إلكتروني صالح';
              }
              return null;
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          const SizedBox(height: 18), // Adjust spacing as needed
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
