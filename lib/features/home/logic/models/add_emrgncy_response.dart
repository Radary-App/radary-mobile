import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_emrgncy_response.g.dart';

@JsonSerializable()
class AddEmergncyResponse {
  final String? coordinates;
  final String? status;
  final String? photo; 
  @JsonKey(name: 'created_at')
  final DateTime? createdAt; 
  final int? id; 
  @JsonKey(name: 'ai_description')
  final String? aiDescription;
@JsonKey(name: 'title_arabic')
  String? titleArabic;
  @JsonKey(name: 'title_english')
  String? titleEnglish;

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
