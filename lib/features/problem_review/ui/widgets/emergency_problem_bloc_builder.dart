import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart'; // Import SpinKit for loading animations
import 'package:radary/features/problem_review/ui/widgets/my_problem.dart';
import '../../data/models/emergency_problem_response_model.dart';
import '../../logic/cubit/emergency_problem_response_cubit.dart';
import '../../logic/cubit/emergency_problem_response_state.dart';

class EmergencyProblemBlocBuilder extends StatelessWidget {
  const EmergencyProblemBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmergencyProblemResponseCubit,
        EmergencyProblemResponseState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(
            child: SpinKitWanderingCubes(
              color: Colors.blue, // Use a defined color
              size: 50.0,
            ),
          ),
          success: (emergenciesList, problemsList) {
            return EmergencyProblemListView(
              problems: problemsList ?? [],
            );
          },
          error: (errorHandler) => Center(child: Text('Error: $errorHandler')),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
