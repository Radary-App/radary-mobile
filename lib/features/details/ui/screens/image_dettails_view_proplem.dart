import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/core/helpers/util/spacing.dart';
import 'package:radary/core/theming/app_text_styles.dart';
import 'package:radary/core/widgets/app_text_button.dart';
import 'package:radary/generated/l10n.dart';

import '../../../../core/di/dependecy_injection.dart';
import '../../../../core/helpers/util/assets_data.dart';
import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/add_text_form_field.dart';
import '../../../home/data/repo/add_proplem_repo.dart';
import '../../../home/logic/cubit/add_proplem_cubit.dart';
import '../../../problem_review/logic/cubit/emergency_problem_response_cubit.dart';
import '../widgets/descrbtion_text_fild.dart';

class ImageDetailsViewProplem extends StatelessWidget {
  final File image;

  const ImageDetailsViewProplem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProplemCubit(getIt<AddProblemRepo>()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.arrow_back, color: blue),
                      ),
                      SvgPicture.asset(AssetsData.logoRadaryText),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      height: 392.h,
                      width: 392.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Text(S.of(context).details,
                          style: AppTextStyles.font20BlackMedium),
                    ],
                  ),
                  verticalSpace(10),
                  DescrbtionTextFild(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 100.h),
                    controller:
                        context.read<AddProplemCubit>().descriptionController,
                    hintText: "",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' لو لا تقم بإدخال وصف المشكلة فسيتم إرسالها بشكل خاطئ';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(20),
                  AppTextButton(
                    onPressed: () {
                      context
                          .read<AddProplemCubit>()
                          .addProblem(context, XFile(image.path));
                    },
                    buttonText: S.of(context).ConfirmBtn,
                    textStyle: AppTextStyles.font16WhiteBold,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
