import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  final String password;
  final String username;

  SignupRequestBody({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
    required this.username, 
  });

  // JSON serialization method
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);

  // JSON deserialization method
  factory SignupRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestBodyFromJson(json);
}