import 'package:flutter/material.dart';
import 'package:radary/core/theming/app_text_styles.dart';
import 'package:radary/features/details/ui/widgets/custom_listTile_details.dart';

import '../../../problem_review/data/models/emergency_problem_response_model.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.title,
    required this.adres,
    this.description,
  });

  final String title;
  final String adres;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      key: UniqueKey(),
      tween: Tween<double>(end: 420, begin: 100),
      duration: const Duration(milliseconds: 900),
      builder: (context, value, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: value,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.grey[100],
            ),
            child: SingleChildScrollView(
              child: _customColumn(),
            ),
          ),
        );
      },
    );
  }

  Widget _customColumn() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            title ?? "عنوان المفيش",
            style: AppTextStyles.font20BlackMedium,
          ),
        ),
        // const SizedBox(height: 20),
        CustomListTileDetails(
          adres: "التفاصيل",
          title: description ?? " يتم العمل علي المشكله",
        ),
      ],
    );
  }
}
