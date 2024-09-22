import 'package:json_annotation/json_annotation.dart';

part 'add_proplem_response.g.dart'; // Ensure the filename matches

@JsonSerializable()
class AddProblemResponse {
  String? coordinates;
  String? status;

  @JsonKey(name: 'user_description')
  String? userDescription; // Use camelCase for Dart conventions

  String? photo;

  @JsonKey(name: 'created_at')
  DateTime? createdAt; // Use DateTime for timestamps

  int? id; // Assuming id is an integer

  @JsonKey(name: 'ai_description')
  String? aiDescription;

  AddProblemResponse({
    this.coordinates,
    this.status,
    this.userDescription,
    this.photo,
    this.createdAt,
    this.id,
    this.aiDescription,
  });

  factory AddProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$AddProblemResponseFromJson(json); // Correct method name

  Map<String, dynamic> toJson() => _$AddProblemResponseToJson(this); // Correct method name
}