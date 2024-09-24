// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_emrgency_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddEmergncyResponse _$AddEmergncyResponseFromJson(Map<String, dynamic> json) =>
    AddEmergncyResponse(
      photo: AddEmergncyResponse._fileFromJson(json['photo'] as String?),
      coordinates: json['coordinates'] as String,
    );

Map<String, dynamic> _$AddEmergncyResponseToJson(
        AddEmergncyResponse instance) =>
    <String, dynamic>{
      'photo': AddEmergncyResponse._fileToJson(instance.photo),
      'coordinates': instance.coordinates,
    };
