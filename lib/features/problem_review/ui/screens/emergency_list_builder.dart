import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/features/problem_review/logic/cubit/emergency_problem_response_cubit.dart';
import 'package:radary/features/problem_review/ui/screens/all_problem.dart';
import 'package:radary/features/problem_review/ui/screens/my_emergencys.dart';

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
            return MyEmergency(emergenciesList: mapEmergenciesToEmergencies(emergenciesList ?? []));
          },
          error: (errorHandler) => setupError(context),
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }

  // Define the method to convert emergencies to emergencies
  List<Emergency> mapEmergenciesToEmergencies(List<Emergency> emergencies) {
    return emergencies.map((emergency) {
      return Emergency(
        id: emergency.id,
        coordinates: emergency.coordinates,
        photo: emergency.photo,
        aiDescriptionArabic: emergency.aiDescriptionArabic,
        aiDescriptionEnglish: emergency.aiDescriptionEnglish,
      );
    }).toList();
  }

  Widget setupError(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error loading data'),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
