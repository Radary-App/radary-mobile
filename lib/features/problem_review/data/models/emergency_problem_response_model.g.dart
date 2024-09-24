// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_problem_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmergencyProblemResponseModel _$EmergencyProblemResponseModelFromJson(
        Map<String, dynamic> json) =>
    EmergencyProblemResponseModel(
      emergencies: (json['emergency'] as List<dynamic>?)
          ?.map((e) => Emergency.fromJson(e as Map<String, dynamic>))
          .toList(),
      problems: (json['problem'] as List<dynamic>?)
          ?.map((e) => Problem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmergencyProblemResponseModelToJson(
        EmergencyProblemResponseModel instance) =>
    <String, dynamic>{
      'emergency': instance.emergencies,
      'problem': instance.problems,
    };

Emergency _$EmergencyFromJson(Map<String, dynamic> json) => Emergency(
      coordinates: json['coordinates'] as String?,
      photo: json['photo'] as String?,
      id: (json['id'] as num?)?.toInt(),
      aiDescriptionEnglish: json['ai_description_english'] as String?,
      aiDescriptionArabic: json['ai_description_arabic'] as String?,
    )
      ..titleArabic = json['title_arabic'] as String?
      ..titleEnglish = json['title_english'] as String?;

Map<String, dynamic> _$EmergencyToJson(Emergency instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
      'photo': instance.photo,
      'id': instance.id,
      'ai_description_english': instance.aiDescriptionEnglish,
      'ai_description_arabic': instance.aiDescriptionArabic,
      'title_arabic': instance.titleArabic,
      'title_english': instance.titleEnglish,
    };

Problem _$ProblemFromJson(Map<String, dynamic> json) => Problem(
      coordinates: json['coordinates'] as String?,
      status: json['status'] as String?,
      userDescription: json['user_description'] as String?,
      photo: json['photo'] as String?,
      createdAt: json['created_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
      aiDescriptionEnglish: json['ai_description_english'] as String?,
      aiDescriptionArabic: json['ai_description_arabic'] as String?,
    )
      ..titleArabic = json['title_arabic'] as String?
      ..titleEnglish = json['title_english'] as String?;

Map<String, dynamic> _$ProblemToJson(Problem instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
      'status': instance.status,
      'user_description': instance.userDescription,
      'photo': instance.photo,
      'created_at': instance.createdAt,
      'id': instance.id,
      'ai_description_english': instance.aiDescriptionEnglish,
      'ai_description_arabic': instance.aiDescriptionArabic,
      'title_arabic': instance.titleArabic,
      'title_english': instance.titleEnglish,
    };
