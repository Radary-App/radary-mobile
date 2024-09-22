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
  String? aiDescriptionEnglish; // Assuming this is meant to be the AI description
  String? aiDescriptionArabic; // Assuming this is meant to be the AI description

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
  String? userDescription;
  String? photo;
  String? createdAt;
  int? id;
  String? aiDescriptionEnglish; // Optional: You can add this if needed
  String? aiDescriptionArabic; // Optional: You can add this if needed

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