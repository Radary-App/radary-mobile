import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';

import '../../../../../core/helpers/util/assets_data.dart';
import '../../../../../core/theming/app_colors.dart';

class CustomBarDetails extends StatelessWidget {
  const CustomBarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back, color: black)),
          SvgPicture.asset(
            AssetsData.logoRadaryText,
          ),
        ],
      ),
    );
  }
}
