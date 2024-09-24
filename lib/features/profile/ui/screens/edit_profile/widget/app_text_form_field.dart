import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/theming/app_colors.dart';

import '../../../../../../core/theming/app_text_styles.dart';


class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding :contentPadding?? EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 15.h,
        ),
        focusedBorder:focusedBorder?? OutlineInputBorder(
            borderSide: const BorderSide(
              color: gray,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        enabledBorder:enabledBorder?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: gray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintStyle: hintStyle ?? AppTextStyles.font16BlackMedium,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor:backgroundColor ?? white,
        filled: true,
      ),
      
      obscureText: isObscureText??false,
      style: AppTextStyles.font16BlackRegular,
    );
  }
}
