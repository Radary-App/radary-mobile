import 'package:flutter/material.dart';
import 'package:radary/features/details/ui/widgets/details_emergency_body.dart';

import '../../../problem_review/data/models/emergency_problem_response_model.dart';

class EmergencyView extends StatelessWidget {
  const EmergencyView({super.key});

  @override
  Widget build(BuildContext context) {
    final Emergency emergency =
        ModalRoute.of(context)!.settings.arguments as Emergency;

    return SafeArea(
      child: Scaffold(
        body: DetailsViewBody(
          emergency: emergency,
        ),
      ),
    );
  }
}
