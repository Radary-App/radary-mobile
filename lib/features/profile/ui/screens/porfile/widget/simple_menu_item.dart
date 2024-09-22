import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/theming/app_colors.dart';

import '../../../../../../core/helpers/util/spacing.dart';
import '../../../../../../core/theming/app_text_styles.dart';

class SimpleMenuItem extends StatelessWidget {
  const SimpleMenuItem({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
    this.iconleft,
    this.trailing,
  });

  final Icon? icon;
  final Icon? iconleft;
  final String title;
  final VoidCallback? onPressed;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                iconleft ?? const SizedBox(),
                horizontalSpace(5),
                Text(
                  title,
                  style: AppTextStyles.font20BlackMedium,
                ),
              ],
            ),
            icon ?? const Icon(Icons.chevron_right, color: blue),
          ],
        ),
      ),
    );
  }
}
