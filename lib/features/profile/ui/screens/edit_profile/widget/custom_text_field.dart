import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/util/spacing.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../core/widgets/add_text_form_field.dart';
import '../../../../../../generated/l10n.dart';


class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key,this.name});
  final String? name;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscureText = true;
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).FirstName,
                style: AppTextStyles.font16LightblueSemibold,
              ),
              verticalSpace(5),
               AppTextFormField(
                validator: (String ) {  },
                hintText: "Enter First Name",
                // hintText: S.of(context).EnterYourFirstName,
              ),
              verticalSpace(5),
              Text(
               S.of(context).LastName,
                style: AppTextStyles.font16BlackSemibold,
              ),
              verticalSpace(5),
               AppTextFormField(
                 validator: (String ) {  },
                hintText: "Enter First Name",
                // hintText: S.of(context).EnterYourLastName,
              ),
              verticalSpace(5),
              Text(
                // S.of(context).Email,
                "Email",
                style: AppTextStyles.font16BlackRegular,
              ),
              verticalSpace(5),
                AppTextFormField(
                 validator: (String ) {  },
                hintText: "Enter First Name",
              ),
              verticalSpace(5),
              Text(
                S.of(context).Password,
                style: AppTextStyles.font36BlackRegular,
              ),
              verticalSpace(5),
              AppTextFormField(
                 validator: (String ) {  },
                hintText: "Enter First Name",
                isObscureText: isObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText; 
                    });
                  },
                  child: Icon(
                    isObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
              verticalSpace(12),
              Text(
                S.of(context).Phone,
                style: AppTextStyles.font14BlackMedium,
              ),
              verticalSpace(12),
               AppTextFormField(
                 validator: (String ) {  },
                hintText: '+20 ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
