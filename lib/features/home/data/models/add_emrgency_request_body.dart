import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_emrgency_request_body.g.dart';

@JsonSerializable()
class AddEmergncyResponse {
  @JsonKey(toJson: _fileToJson, fromJson: _fileFromJson)
  final XFile? photo;
  final String coordinates;

  AddEmergncyResponse({required this.photo, required this.coordinates});

  // Custom toJson and fromJson for XFile
  static String? _fileToJson(XFile? file) => file?.path;

  static XFile? _fileFromJson(String? path) => path != null ? XFile(path) : null;
  // Factory method for generating an instance from JSON
  factory AddEmergncyResponse.fromJson(Map<String, dynamic> json) =>
      _$AddEmergncyResponseFromJson(json);

  // Method for converting an instance to JSON
  Map<String, dynamic> toJson() => _$AddEmergncyResponseToJson(this);
}
 
