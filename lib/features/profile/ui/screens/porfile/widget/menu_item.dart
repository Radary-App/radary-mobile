import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/util/spacing.dart';
import '../../../../../../core/theming/app_text_styles.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            TextButton(
                onPressed: onPressed,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      image,
                      height: 30.sp,
                    ),
                    horizontalSpace(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.font20BlackBold,
                        ),
                        verticalSpace(4),
                        Text(subtitle, style: AppTextStyles.font16BlackRegular),
                      ],
                    )
                  ],
                )),
          ],
        )
      ],
    );
  }
}
