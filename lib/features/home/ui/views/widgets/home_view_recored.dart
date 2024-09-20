import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';

class HomeViewRecorded extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const HomeViewRecorded({
    required this.text,  // Required text property
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: blue),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: blue,
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,  // Dynamic text passed via constructor
            style: AppTextStyles.font24BlueMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}