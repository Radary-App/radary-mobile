import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/theming/app_colors.dart';

import '../../../../../../core/theming/app_text_styles.dart';


class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.text, this.onPressed,});
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
  onPressed: onPressed,
  style: ElevatedButton.styleFrom(
    backgroundColor: blue, 
    padding: EdgeInsets.symmetric(vertical: 18.h), 
    minimumSize: const Size(double.infinity, 0), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.r) 
    ),
  ),
  child: Text(
    text,
    style: AppTextStyles.font18WhiteMedium,
  ),
)
;
  }
}