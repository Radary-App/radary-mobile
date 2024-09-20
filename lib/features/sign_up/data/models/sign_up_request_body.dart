import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  @JsonKey(name: 'f_name')
  final String firstName;
  @JsonKey(name: 'l_name')
  final String lastName;
  final String phone;
  final String password;
  final String email;

  SignupRequestBody(
      {required this.firstName,
      required this.lastName,
      required this.phone,
      required this.password,
      required this.email});

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
