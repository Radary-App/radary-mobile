import 'package:json_annotation/json_annotation.dart';

part 'emergency_problem_response_model.g.dart';

@JsonSerializable()
class EmergencyProblemResponseModel {
  @JsonKey(name: 'emergency')
  List<Emergency>? emergencies;

  @JsonKey(name: 'problem')
  List<Problem>? problems;

  EmergencyProblemResponseModel({this.emergencies, this.problems});

  factory EmergencyProblemResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EmergencyProblemResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmergencyProblemResponseModelToJson(this);
}

@JsonSerializable()
class Emergency {
  String? coordinates;
  String? photo;
  int? id;
  String? aiDescriptionEnglish; // AI description in English
  String? aiDescriptionArabic; // AI description in Arabic

  Emergency({
    this.coordinates,
    this.photo,
    this.id,
    this.aiDescriptionEnglish,
    this.aiDescriptionArabic,
  });

  factory Emergency.fromJson(Map<String, dynamic> json) =>
      _$EmergencyFromJson(json);

  Map<String, dynamic> toJson() => _$EmergencyToJson(this);
}

@JsonSerializable()
class Problem {
  String? coordinates;
  String? status;
  @JsonKey(name: 'user_description')
  String? userDescription;
  String? photo;
  @JsonKey(name: 'created_at')
  String? createdAt;
  int? id;
  @JsonKey(name: 'ai_description_english')
  String? aiDescriptionEnglish; 
  @JsonKey(name: 'ai_description_arabic')
  String? aiDescriptionArabic; 
  String? title;

  Problem({
    this.coordinates,
    this.status,
    this.userDescription,
    this.photo,
    this.createdAt,
    this.id,
    this.aiDescriptionEnglish,
    this.aiDescriptionArabic,
  });

  factory Problem.fromJson(Map<String, dynamic> json) =>
      _$ProblemFromJson(json);

  Map<String, dynamic> toJson() => _$ProblemToJson(this);
}