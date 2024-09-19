import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/core/theming/app_text_styles.dart';
import 'package:radary/core/widgets/app_text_button.dart';
import 'package:radary/generated/l10n.dart';

import '../../../../core/helpers/util/assets_data.dart';
import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_colors.dart';

class ImageDettailsView extends StatelessWidget {
  final File? image;
  const ImageDettailsView({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back, color: blue)),
                SvgPicture.asset(
                  AssetsData.logoRadaryText,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Image.file(
                image!,
                cacheHeight: 650,
                cacheWidth: 381,
              ),
            ),
            AppTextButton(
                onPressed: () {
                  context.pushNamed(Routes.ConfirmView);
                },
                buttonText: S.of(context).ConfirmBtn,
                textStyle: AppTextStyles.font16WhiteBold)
          ],
        )),
      ),
    );
  }
}
