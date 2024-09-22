import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/features/profile/ui/widgets/action_last_bottom.dart';

import '../../../../core/helpers/util/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class LastContainer extends StatelessWidget {
  const LastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 450.w,
        height: 450.h,
        child: Column(
          children: [
            Text(
              S.of(context).DeleteMyAccount,
              style: AppTextStyles.font20BlackBold,
            ),
            verticalSpace(20),
            Text(
              S.of(context).DeleteMessage,
              style: AppTextStyles.font16BlackMedium,
            ),
            verticalSpace(50),
            const ActionLastBottom(),
          ],
        ),
      ),
    );
  }
}
