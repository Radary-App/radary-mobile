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
      aiDescriptionEnglish: json['aiDescriptionEnglish'] as String?,
      aiDescriptionArabic: json['aiDescriptionArabic'] as String?,
    );

Map<String, dynamic> _$EmergencyToJson(Emergency instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
      'photo': instance.photo,
      'id': instance.id,
      'aiDescriptionEnglish': instance.aiDescriptionEnglish,
      'aiDescriptionArabic': instance.aiDescriptionArabic,
    };

Problem _$ProblemFromJson(Map<String, dynamic> json) => Problem(
      coordinates: json['coordinates'] as String?,
      status: json['status'] as String?,
      userDescription: json['userDescription'] as String?,
      photo: json['photo'] as String?,
      createdAt: json['createdAt'] as String?,
      id: (json['id'] as num?)?.toInt(),
      aiDescriptionEnglish: json['aiDescriptionEnglish'] as String?,
      aiDescriptionArabic: json['aiDescriptionArabic'] as String?,
    );

Map<String, dynamic> _$ProblemToJson(Problem instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
      'status': instance.status,
      'userDescription': instance.userDescription,
      'photo': instance.photo,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'aiDescriptionEnglish': instance.aiDescriptionEnglish,
      'aiDescriptionArabic': instance.aiDescriptionArabic,
    };
