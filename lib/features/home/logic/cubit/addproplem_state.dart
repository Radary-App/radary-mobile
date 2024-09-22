
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addproplem_state.freezed.dart';

@freezed
class AddproplemState<T> with _$AddproplemState<T> {
  const factory AddproplemState.initial() = _Initial;
  
  const factory AddproplemState.loading() = Loading;
  const factory AddproplemState.success(T data) = Success<T>;
  const factory AddproplemState.error({required String error}) = Error;
}