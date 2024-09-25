import 'package:flutter/material.dart';
import 'package:radary/features/details/ui/widgets/details_Proplem_body.dart';

import '../../../problem_review/data/models/emergency_problem_response_model.dart';

class ProplemDetailsView extends StatelessWidget {
  const ProplemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
     final Problem problem =
        ModalRoute.of(context)!.settings.arguments as Problem;

    return Scaffold(body: SafeArea(child: DetailsProplemBody(problem: problem)));
  }
}