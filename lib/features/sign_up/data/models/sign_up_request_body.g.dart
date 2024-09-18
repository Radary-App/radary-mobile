// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      firstName: json['f_name'] as String,
      lastName: json['l_name'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'f_name': instance.firstName,
      'l_name': instance.lastName,
      'phone': instance.phone,
      'password': instance.password,
      'email': instance.email,
    };
