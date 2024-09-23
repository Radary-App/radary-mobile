// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_emrgency_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddEmergncyResponse _$AddEmergncyResponseFromJson(Map<String, dynamic> json) =>
    AddEmergncyResponse(
      coordinates: json['coordinates'] as String?,
      status: json['status'] as String?,
      userDescription: json['user_description'] as String?,
      photo: json['photo'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: (json['id'] as num?)?.toInt(),
      aiDescription: json['ai_description'] as String?,
    );

Map<String, dynamic> _$AddEmergncyResponseToJson(
        AddEmergncyResponse instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
      'status': instance.status,
      'user_description': instance.userDescription,
      'photo': instance.photo,
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'ai_description': instance.aiDescription,
    };
