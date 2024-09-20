import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/helpers/util/assets_data.dart';
import 'package:radary/core/theming/app_colors.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/login_request_body.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widgets/dont_have_account_text.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AssetsData.logoRadaryText,
                    ),
                    Text(
                      S.of(context).Log_In,
                      style: AppTextStyles.font24BlackRegular,
                    ),
                  ],
                ),
                verticalSpace(24),
                const EmailAndPassword(),
                verticalSpace(10),
                verticalSpace(20),
                AppTextButton(
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                  buttonText: S.of(context).Log_In,
                  textStyle: AppTextStyles.font16Whiteregular,
                ),
                verticalSpace(60),
                const DontHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates(
          LoginRequestBody(
            phone: context.read<LoginCubit>().phoneController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ),
        );
  }
}
