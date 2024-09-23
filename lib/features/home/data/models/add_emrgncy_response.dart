import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_emrgncy_response.g.dart';

@JsonSerializable()
class AddEmergncyResponse {
  final String? coordinates;
  final String? status;
  final String? photo; // Assuming this could be a URL or file path
  @JsonKey(name: 'created_at')
  final DateTime? createdAt; // Use DateTime for timestamps
  final int? id; // Assuming id is an integer
  @JsonKey(name: 'ai_description')
  final String? aiDescription;

  AddEmergncyResponse({
    this.coordinates,
    this.status,
    this.photo,
    this.createdAt,
    this.id,
    this.aiDescription,
  });

  // Factory method for generating an instance from JSON
  factory AddEmergncyResponse.fromJson(Map<String, dynamic> json) =>
      _$AddEmergncyResponseFromJson(json);

  // Method for converting an instance to JSON
  Map<String, dynamic> toJson() => _$AddEmergncyResponseToJson(this);
}
