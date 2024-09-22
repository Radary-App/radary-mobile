import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/core/widgets/add_text_form_field.dart';
import 'package:radary/core/widgets/app_text_button.dart';
import '../../../../../../core/helpers/util/assets_data.dart';
import '../../../../../../core/helpers/util/spacing.dart';
import '../../../../../../core/routing/route.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../generated/l10n.dart';
import '../../porfile/widget/simple_menu_item.dart';
import '../widget/custom_buttom.dart';
import '../widget/custom_text_field.dart';
import '../widget/international_phone_number.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Text(
                      S.of(context).edetProfile,
                      style: AppTextStyles.font24BlackRegular,
                    ),
                    SvgPicture.asset(
                      AssetsData.logoRadaryText,
                    ),
                  ],
                ),
                verticalSpace(40),
                //cercle avter
                Center(
                  child: Stack(children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                      ),
                      radius: 80,
                    ),
                    //edete photo
                    Positioned(
                      bottom: -10,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          color: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_rounded,
                              color: blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),

                verticalSpace(50),
                AppTextFormField(
                  hintText: S.of(context).EnterYourFirstName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                  },
                ),
                verticalSpace(30),
                AppTextFormField(
                  hintText: S.of(context).EnterYourLastName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                  },
                ),
                verticalSpace(30),
                AppTextFormField(
                  hintText: S.of(context).EnterYourEmail,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                  },
                ),
                verticalSpace(50),
                AppTextButton(
                    onPressed: () {},
                    buttonText: S.of(context).ConfirmBtn,
                    textStyle: AppTextStyles.font16Whiteregular)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
