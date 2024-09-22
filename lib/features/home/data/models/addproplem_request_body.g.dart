// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addproplem_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddproplemRequestBody _$AddproplemRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddproplemRequestBody(
      photo: AddproplemRequestBody._fileFromJson(json['photo'] as String?),
      coordinates: json['coordinates'] as String,
    );

Map<String, dynamic> _$AddproplemRequestBodyToJson(
        AddproplemRequestBody instance) =>
    <String, dynamic>{
      'photo': AddproplemRequestBody._fileToJson(instance.photo),
      'coordinates': instance.coordinates,
    };
