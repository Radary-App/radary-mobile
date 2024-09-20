import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignupResponse {
  @JsonKey(name: 'msg')
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  SignupResponse({this.message, this.userData, this.status, this.code});

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  @JsonKey(name: 'f_name')
  String? firstName;
  @JsonKey(name: 'l_name')
  String? lastName;
  String? email;

  UserData({this.token, this.userName, this.firstName, this.lastName, this.email});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}