import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/features/problem_review/ui/screens/all_problem.dart';
import '../../data/models/emergency_problem_response_model.dart';
import '../../logic/cubit/emergency_problem_response_cubit.dart';
import '../../logic/cubit/emergency_problem_response_state.dart';



class EmergencyProblemBlocBuilder extends StatelessWidget {
  const EmergencyProblemBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmergencyProblemResponseCubit, EmergencyProblemResponseState>(
      buildWhen: (previous, current) =>
          current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          success: (emergenciesList, problemsList) {
            return setupSuccess(emergenciesList, problemsList);
          },
          error: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(List<Emergency>? emergenciesList, List<Problem>? problemsList) {
    return EmergencyProblemListView(
      problems: problemsList ?? [], // Provide an empty list if null
    );
  }

  Widget setupError() {
    return const Center(child: Text('Error loading data'));
  }
}