import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/util/assets_data.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../generated/l10n.dart';

class HomeViewBanner extends StatelessWidget {
  const HomeViewBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: blue,
      ),
      child: Row(
        children: [
          Expanded(
            // Allow text column to take available space
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).homeBanner1,
                    style: AppTextStyles.font16WhiteMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    S.of(context).homeBanner2,
                    style: AppTextStyles.font16WhiteMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    S.of(context).homeBanner3,
                    style: AppTextStyles.font16WhiteMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Add padding to the SVG image
            child: SvgPicture.asset(
              AssetsData.homeBanner,
              height: 150.h, // Adjust the height as needed
            ),
          ),
        ],
      ),
    );
  }
}

