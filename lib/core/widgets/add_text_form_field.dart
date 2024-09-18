import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final bool? isNumericKeyboard; // New property

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.isNumericKeyboard,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: isNumericKeyboard == true
          ? const TextInputType.numberWithOptions(decimal: false)
          : TextInputType.text, // Use numeric keyboard if true
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: blue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: gray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: hintStyle ?? AppTextStyles.font20BlackRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: backgroundColor ?? white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      // style: AppTextStyles.font14gray666Medium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
