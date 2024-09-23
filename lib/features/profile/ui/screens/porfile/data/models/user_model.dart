import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  String firstName;
  String lastName;
  String? image;
  String email;
  String? dateOfBirth;
  String phoneNumber;
  String? governorate;
  String? markaz;

  User({
    required this.firstName,
    required this.lastName,
    this.image,
    required this.email,
    this.dateOfBirth,
    required this.phoneNumber,
    this.governorate,
    this.markaz,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
