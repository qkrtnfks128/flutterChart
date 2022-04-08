import 'package:freezed_annotation/freezed_annotation.dart';

part 'fiet_user.freezed.dart';

part 'fiet_user.g.dart';

enum FietGender {
  @JsonValue("male")
  Male,
  @JsonValue("female")
  Female,
  @JsonValue("bigender")
  Bigender,
}

enum ExerciseExpert {
  @JsonValue("expert")
  Expert,
  @JsonValue("beginner")
  Beginner,
}

@freezed
class FietUser with _$FietUser {
  factory FietUser({
    @Default("") String uuid,
    @Default("") String name,
    @Default("") String email,
    @Default("") String nationCode,
    @Default("") String langCode,
    @Default("") String timezone,
    @Default("") String osType,
    @Default("") String osVersion,
    @Default("") String manufacturer,
    @Default("") String model,
    @Default(20) int age,
    @Default(0.0) double height,
    @Default(0.0) double weight,
    @Default(FietGender.Male) FietGender gender,
    @Default(ExerciseExpert.Beginner) ExerciseExpert exerciseExpert,
  }) = _FietUser;

  factory FietUser.fromJson(Map<String, dynamic> json) =>
      _$FietUserFromJson(json);
}
