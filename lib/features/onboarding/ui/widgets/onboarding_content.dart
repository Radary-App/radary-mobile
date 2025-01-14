import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../data/models/onboarding_info.dart';
import '../../data/repo/onboarding_items.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.item,
    required this.pageController,
  });

  final OnboardingInfo item;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(item.image),
        SizedBox(height: 20.h),
        Text(
          item.title,
          style: AppTextStyles.font20BlueRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Text(
          item.description,
          textAlign: TextAlign.center,
          style: AppTextStyles.font20BlackRegular,
        ),
      ],
    );
  }
}
