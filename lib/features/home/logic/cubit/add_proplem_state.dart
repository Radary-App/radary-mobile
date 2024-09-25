import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_proplem_state.freezed.dart'; // Corrected name

@freezed
class AddProblemState<T> with _$AddProblemState<T> { // Corrected name
  const factory AddProblemState.initial() = _Initial;
  const factory AddProblemState.loading() = Loading;
  const factory AddProblemState.success(T data) = Success<T>;
  const factory AddProblemState.error({required String error}) = Error;
}