import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/features/problem_review/logic/cubit/emergency_problem_response_cubit.dart';
import 'package:radary/features/problem_review/ui/screens/my_emergencys.dart';

import '../../data/models/emergency_problem_response_model.dart';
import '../../logic/cubit/emergency_problem_response_state.dart';

class EmergencyListBlocBuilder extends StatelessWidget {
  const EmergencyListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmergencyProblemResponseCubit, EmergencyProblemResponseState>(
      buildWhen: (previous, current) => current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          success: (emergenciesList, problemsList) {
            // تأكد من أن كلا القائمتين متاحتين وأنهما غير فارغتين
            return MyEmergency(
              emergenciesList: emergenciesList ?? [], // استخدم قائمة الطوارئ من الباك
            );
          },
          error: (errorHandler) => setupError(context),
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
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
