import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';

import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_text_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: AppTextStyles.font16LightblueMedium,
          ),
          TextSpan(
            text: ' Login',
            style: AppTextStyles.font12BlackRegular,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}