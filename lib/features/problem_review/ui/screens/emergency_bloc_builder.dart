import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/features/problem_review/logic/cubit/emergency_problem_response_cubit.dart';
import 'package:radary/features/problem_review/ui/screens/all_problem.dart';

import '../../data/models/emergency_problem_response_model.dart';
import '../../logic/cubit/emergency_problem_response_state.dart';

class EmergencyListBlocBuilder extends StatelessWidget {
  const EmergencyListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmergencyProblemResponseCubit,
        EmergencyProblemResponseState>(
      buildWhen: (previous, current) => current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          success: (emergenciesList, problemsList) {
            return EmergencyProblemListView(
              problems: emapEmergenciesToProblems(emergenciesList ?? []),
            );
          },
          error: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  // Define the method to convert emergencies to problems
  List<Problem> emapEmergenciesToProblems(List<Emergency> emergencies) {
    return emergencies.map((emergency) {
      return Problem(
        id: emergency.id,
        userDescription: emergency.description,
        coordinates: emergency.coordinates,
      );
    }).toList();
  }

  Widget setupError() {
    return const Center(child: Text('Error loading data'));
  }
}
