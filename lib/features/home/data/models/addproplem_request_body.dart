import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'addproplem_request_body.g.dart';

@JsonSerializable()
class AddproplemRequestBody {
  @JsonKey(toJson: _fileToJson, fromJson: _fileFromJson)
  final XFile? photo;
  final String coordinates;
  final String userDescription; 

  AddproplemRequestBody({
    required this.photo,
    required this.coordinates,
    required this.userDescription,  
  });

  // Custom toJson and fromJson for XFile
  static String? _fileToJson(XFile? file) => file?.path;

  static XFile? _fileFromJson(String? path) => path != null ? XFile(path) : null;

  Map<String, dynamic> toJson() => _$AddproplemRequestBodyToJson(this);

  factory AddproplemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddproplemRequestBodyFromJson(json);
}