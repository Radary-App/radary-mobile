import 'package:flutter/material.dart';
import 'package:radary/features/details/ui/widgets/card_details.dart';
import 'package:radary/features/details/ui/widgets/custom_details.dart';
import 'package:radary/features/details/ui/widgets/image_detalis.dart';

import '../../../problem_review/data/models/emergency_problem_response_model.dart';

class DetailsProplemBody extends StatelessWidget {
  const DetailsProplemBody({super.key, required this.problem});
  final Problem problem;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBarDetails(),
        ImageDetails(
          image: problem.photo ??
              "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhgJiDwHr5LknxeAAo6Bfmt2wQEp1my8jrrXeLrt7qoLmZCLWD4RmwlPs4TsberWovNSYeubnTKvv9yOnY2TD2qu6CAtQuvgPXI2CxQEHxJs68uATRUm5egomKowMgPdJKF6hPGH7nPuHo/s1600/kilwa+zoldik.gif",
        ),
        const CustomBarDetails(),
        Align(
          alignment: Alignment.bottomCenter,
          child: CardDetails(
            title: problem.titleArabic ?? "عنوان المفيش",
            adres: "التفاصيل",
            description: problem.aiDescriptionArabic,
          ),
        ),
      ],
    );
  }
}
