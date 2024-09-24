import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/emergency_problem_response_model.dart';

part 'emergency_problem_response_state.freezed.dart';

@freezed
class EmergencyProblemResponseState with _$EmergencyProblemResponseState {
  const factory EmergencyProblemResponseState.initial() = _Initial;

  // Loading state
  const factory EmergencyProblemResponseState.loading() = Loading;

  // Success state with lists of Emergency and Problem
  const factory EmergencyProblemResponseState.success(
    List<Emergency>? emergencies,
    List<Problem>? problems,
  ) = Success;

  // Error state with an error handler
  const factory EmergencyProblemResponseState.error(ErrorHandler errorHandler) = Error;
}