// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fiet_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FietUser _$$_FietUserFromJson(Map<String, dynamic> json) => _$_FietUser(
      uuid: json['uuid'] as String? ?? "",
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      nationCode: json['nationCode'] as String? ?? "",
      langCode: json['langCode'] as String? ?? "",
      timezone: json['timezone'] as String? ?? "",
      osType: json['osType'] as String? ?? "",
      osVersion: json['osVersion'] as String? ?? "",
      manufacturer: json['manufacturer'] as String? ?? "",
      model: json['model'] as String? ?? "",
      age: json['age'] as int? ?? 20,
      height: (json['height'] as num?)?.toDouble() ?? 0.0,
      weight: (json['weight'] as num?)?.toDouble() ?? 0.0,
      gender:
          $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.Male,
      exerciseExpert: $enumDecodeNullable(
              _$ExerciseExpertEnumMap, json['exerciseExpert']) ??
          ExerciseExpert.Beginner,
    );

Map<String, dynamic> _$$_FietUserToJson(_$_FietUser instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'nationCode': instance.nationCode,
      'langCode': instance.langCode,
      'timezone': instance.timezone,
      'osType': instance.osType,
      'osVersion': instance.osVersion,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'gender': _$GenderEnumMap[instance.gender],
      'exerciseExpert': _$ExerciseExpertEnumMap[instance.exerciseExpert],
    };

const _$GenderEnumMap = {
  Gender.Male: 'male',
  Gender.Female: 'female',
  Gender.Bigender: 'bigender',
};

const _$ExerciseExpertEnumMap = {
  ExerciseExpert.Expert: 'expert',
  ExerciseExpert.Beginner: 'beginner',
};
