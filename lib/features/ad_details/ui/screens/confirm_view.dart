import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/core/helpers/util/spacing.dart';
import 'package:radary/core/theming/app_text_styles.dart';
import 'package:radary/core/widgets/app_text_button.dart';
import 'package:radary/generated/l10n.dart';

import '../../../../core/helpers/util/assets_data.dart';
import '../../../../core/routing/route.dart';

class ConfirmView extends StatelessWidget {
  const ConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  AssetsData.notifications,
                ),
                SvgPicture.asset(
                  AssetsData.logoRadaryText,
                ),
              ],
            ),
            verticalSpace(30),
            SvgPicture.asset(AssetsData.confirm),
            verticalSpace(80),
            Text(
              S.of(context).ReportDoneMessage,
              style: AppTextStyles.font24BlackRegular,
              textAlign: TextAlign.center,
            ),
            verticalSpace(111),
            AppTextButton(
              onPressed: () {
                context.pushNamed(Routes.homeScreen);
              },
              buttonText: S.of(context).EndBtn,
              textStyle: AppTextStyles.font16Whiteregular,
            ),
            verticalSpace(20),
            TextButton(
                onPressed: () {
                  context.pushNamed(Routes.followReport);
                },
                child: Text(
                  S.of(context).ForContinueReporting,
                  style: AppTextStyles.font16BlueMedium,
                ))
          ],
        ),
      )),
    );
  }
}
