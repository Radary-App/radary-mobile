import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/core/routing/route.dart';
import 'package:radary/features/onboarding/ui/screens/on_boarding_screens.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/util/assets_data.dart';
import '../../../../core/theming/app_colors.dart';
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
    final bool isArabic = Localizations.localeOf(context).languageCode == 'ar';

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
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
                verticalSpace(50),
                SmoothPageIndicator(
                  controller: context.read<SignupCubit>().pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: blue,
                    dotColor: gray,
                    dotHeight: 10.h,
                    dotWidth: 80.w,
                    expansionFactor: 2.5.w,
                    spacing: 5.0.w,
                  ),
                  textDirection:
                      isArabic ? TextDirection.rtl : TextDirection.ltr,
                ),
                verticalSpace(20),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: S.of(context).next,
                      textStyle: AppTextStyles.font16Whiteregular,
                      onPressed: () {
                        context.pushNamed(Routes.homeScreen);
                        // validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(30),
                    // const AlreadyHaveAccountText(),
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
