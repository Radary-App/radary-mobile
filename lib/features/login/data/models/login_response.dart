import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'msg')
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  @JsonKey(name: 'code')
  int? code;

  LoginResponse({this.message, this.userData, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'name')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}