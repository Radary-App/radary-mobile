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
}

@JsonSerializable()
class Emergency {
  String? coordinates;
  String? photo;
  int? id;
  String? description; // Added field

  Emergency({this.coordinates, this.photo, this.id, this.description});

  factory Emergency.fromJson(Map<String, dynamic> json) =>
      _$EmergencyFromJson(json);
}

@JsonSerializable()
class Problem {
  String? coordinates;
  String? status;
  String? userDescription;
  String? photo;
  String? createdAt;
  int? id;

  Problem({
    this.coordinates,
    this.status,
    this.userDescription,
    this.photo,
    this.createdAt,
    this.id,
  });

  factory Problem.fromJson(Map<String, dynamic> json) =>
      _$ProblemFromJson(json);
}