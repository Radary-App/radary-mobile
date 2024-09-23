
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_emergency_state.freezed.dart';

@freezed
class AddEmergencyState<T> with _$AddEmergencyState<T> {
  const factory AddEmergencyState.initial() = _Initial;
  
  const factory AddEmergencyState.loading() = Loading;
  const factory AddEmergencyState.success(T data) = Success<T>;
  const factory AddEmergencyState.error({required String error}) = Error;
}