import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_proplem_state.freezed.dart';

@freezed
class AddEmergencyState<T> with _$AddEmergencyState<T> {
  const factory AddEmergencyState.initial() = _Initial;
  const factory AddEmergencyState.loading() = _Loading;
  const factory AddEmergencyState.success(T data) = _Success<T>;
  const factory AddEmergencyState.error({required String error}) = _Error;
}