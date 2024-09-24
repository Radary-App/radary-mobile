import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/features/problem_review/data/repo/emergency_problem_repo.dart';
import 'package:radary/features/problem_review/logic/cubit/emergency_problem_response_state.dart';
import '../../data/models/emergency_problem_response_model.dart';

class EmergencyProblemResponseCubit extends Cubit<EmergencyProblemResponseState> {
  final EmergencyProblemResponseRepo _homeRepo;

  EmergencyProblemResponseCubit(this._homeRepo)
      : super(const EmergencyProblemResponseState.initial());

  void getData() async {
    emit(const EmergencyProblemResponseState.loading());

    final response = await _homeRepo.getEmergencyAndProblems();

    response.when(
      success: (emergencyProblemResponseModel) {
        emit(EmergencyProblemResponseState.success(
          emergencyProblemResponseModel.emergencies ?? [],
          emergencyProblemResponseModel.problems ?? [],
        ));
      },
      failure: (errorHandler) {
        emit(EmergencyProblemResponseState.error(errorHandler));
      },
    );
  }
}