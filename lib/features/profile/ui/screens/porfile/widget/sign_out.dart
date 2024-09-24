import 'package:flutter/material.dart';

import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../generated/l10n.dart';


class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(S.of(context).SignOut, style: AppTextStyles.font16BlackMedium));
  }
}
