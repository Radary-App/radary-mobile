import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/util/spacing.dart';
import '../../../../core/helpers/util/assets_data.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../generated/l10n.dart';
import '../../logic/cubit/sigin_up_cubit.dart';
import '../widgets/sign_up_bloc_listener.dart';
import '../widgets/sign_up_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
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
                      S.of(context).Sign_UP,
                      style: AppTextStyles.font24BlackRegular,
                    ),
                  ],
                ),
                verticalSpace(24),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(80),
                    AppTextButton(
                      buttonText: S.of(context).ConfirmBtn,
                      textStyle: AppTextStyles.font16Whiteregular,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(30),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
      
    }
  }
}
