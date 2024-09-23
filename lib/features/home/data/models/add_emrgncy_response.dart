import 'package:json_annotation/json_annotation.dart';

part 'add_emrgncy_response.g.dart'; // Ensure the filename matches

@JsonSerializable()
class AddEmergncyResponse {
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

  AddEmergncyResponse({
    this.coordinates,
    this.status,
    this.userDescription,
    this.photo,
    this.createdAt,
    this.id,
    this.aiDescription,
  });

  factory AddEmergncyResponse.fromJson(Map<String, dynamic> json) =>
      _$AddEmergncyResponseFromJson(json); // Correct method name

  Map<String, dynamic> toJson() =>
      _$AddEmergncyResponseToJson(this); // Correct method name
}
