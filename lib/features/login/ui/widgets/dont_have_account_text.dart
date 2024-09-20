import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/generated/l10n.dart';
import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_text_styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).Dont_Have,
            style: AppTextStyles.font16BlueMedium,
          ),
          TextSpan(
            text: S.of(context).Sign_UP,
            style: AppTextStyles.font16BlackRegular,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
