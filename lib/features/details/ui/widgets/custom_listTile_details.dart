import 'package:flutter/material.dart';
import 'package:radary/core/theming/app_text_styles.dart';

class CustomListTileDetails extends StatelessWidget {
  const CustomListTileDetails({
    required this.title,
    required this.adres,
    super.key,
  });

  final String title;
  final String adres;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Wrap(
            children: [
              Text(
                adres,
                style: AppTextStyles.font20BlackMedium,
              ),
              Text(
                title,
                style: AppTextStyles.font16BlackRegular,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
