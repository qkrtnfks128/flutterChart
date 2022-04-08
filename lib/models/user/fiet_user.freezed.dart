// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fiet_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FietUser _$FietUserFromJson(Map<String, dynamic> json) {
  return _FietUser.fromJson(json);
}

/// @nodoc
class _$FietUserTearOff {
  const _$FietUserTearOff();

  _FietUser call(
      {String uuid = "",
      String name = "",
      String email = "",
      String nationCode = "",
      String langCode = "",
      String timezone = "",
      String osType = "",
      String osVersion = "",
      String manufacturer = "",
      String model = "",
      int age = 20,
      double height = 0.0,
      double weight = 0.0,
      FietGender gender = FietGender.Male,
      ExerciseExpert exerciseExpert = ExerciseExpert.Beginner}) {
    return _FietUser(
      uuid: uuid,
      name: name,
      email: email,
      nationCode: nationCode,
      langCode: langCode,
      timezone: timezone,
      osType: osType,
      osVersion: osVersion,
      manufacturer: manufacturer,
      model: model,
      age: age,
      height: height,
      weight: weight,
      gender: gender,
      exerciseExpert: exerciseExpert,
    );
  }

  FietUser fromJson(Map<String, Object?> json) {
    return FietUser.fromJson(json);
  }
}

/// @nodoc
const $FietUser = _$FietUserTearOff();

/// @nodoc
mixin _$FietUser {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get nationCode => throw _privateConstructorUsedError;
  String get langCode => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  String get osType => throw _privateConstructorUsedError;
  String get osVersion => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  FietGender get gender => throw _privateConstructorUsedError;
  ExerciseExpert get exerciseExpert => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FietUserCopyWith<FietUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FietUserCopyWith<$Res> {
  factory $FietUserCopyWith(FietUser value, $Res Function(FietUser) then) =
      _$FietUserCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String name,
      String email,
      String nationCode,
      String langCode,
      String timezone,
      String osType,
      String osVersion,
      String manufacturer,
      String model,
      int age,
      double height,
      double weight,
      FietGender gender,
      ExerciseExpert exerciseExpert});
}

/// @nodoc
class _$FietUserCopyWithImpl<$Res> implements $FietUserCopyWith<$Res> {
  _$FietUserCopyWithImpl(this._value, this._then);

  final FietUser _value;
  // ignore: unused_field
  final $Res Function(FietUser) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? nationCode = freezed,
    Object? langCode = freezed,
    Object? timezone = freezed,
    Object? osType = freezed,
    Object? osVersion = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? gender = freezed,
    Object? exerciseExpert = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nationCode: nationCode == freezed
          ? _value.nationCode
          : nationCode // ignore: cast_nullable_to_non_nullable
              as String,
      langCode: langCode == freezed
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      osType: osType == freezed
          ? _value.osType
          : osType // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FietGender,
      exerciseExpert: exerciseExpert == freezed
          ? _value.exerciseExpert
          : exerciseExpert // ignore: cast_nullable_to_non_nullable
              as ExerciseExpert,
    ));
  }
}

/// @nodoc
abstract class _$FietUserCopyWith<$Res> implements $FietUserCopyWith<$Res> {
  factory _$FietUserCopyWith(_FietUser value, $Res Function(_FietUser) then) =
      __$FietUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String name,
      String email,
      String nationCode,
      String langCode,
      String timezone,
      String osType,
      String osVersion,
      String manufacturer,
      String model,
      int age,
      double height,
      double weight,
      FietGender gender,
      ExerciseExpert exerciseExpert});
}

/// @nodoc
class __$FietUserCopyWithImpl<$Res> extends _$FietUserCopyWithImpl<$Res>
    implements _$FietUserCopyWith<$Res> {
  __$FietUserCopyWithImpl(_FietUser _value, $Res Function(_FietUser) _then)
      : super(_value, (v) => _then(v as _FietUser));

  @override
  _FietUser get _value => super._value as _FietUser;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? nationCode = freezed,
    Object? langCode = freezed,
    Object? timezone = freezed,
    Object? osType = freezed,
    Object? osVersion = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? gender = freezed,
    Object? exerciseExpert = freezed,
  }) {
    return _then(_FietUser(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nationCode: nationCode == freezed
          ? _value.nationCode
          : nationCode // ignore: cast_nullable_to_non_nullable
              as String,
      langCode: langCode == freezed
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      osType: osType == freezed
          ? _value.osType
          : osType // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as FietGender,
      exerciseExpert: exerciseExpert == freezed
          ? _value.exerciseExpert
          : exerciseExpert // ignore: cast_nullable_to_non_nullable
              as ExerciseExpert,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FietUser implements _FietUser {
  _$_FietUser(
      {this.uuid = "",
      this.name = "",
      this.email = "",
      this.nationCode = "",
      this.langCode = "",
      this.timezone = "",
      this.osType = "",
      this.osVersion = "",
      this.manufacturer = "",
      this.model = "",
      this.age = 20,
      this.height = 0.0,
      this.weight = 0.0,
      this.gender = FietGender.Male,
      this.exerciseExpert = ExerciseExpert.Beginner});

  factory _$_FietUser.fromJson(Map<String, dynamic> json) =>
      _$$_FietUserFromJson(json);

  @JsonKey()
  @override
  final String uuid;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String nationCode;
  @JsonKey()
  @override
  final String langCode;
  @JsonKey()
  @override
  final String timezone;
  @JsonKey()
  @override
  final String osType;
  @JsonKey()
  @override
  final String osVersion;
  @JsonKey()
  @override
  final String manufacturer;
  @JsonKey()
  @override
  final String model;
  @JsonKey()
  @override
  final int age;
  @JsonKey()
  @override
  final double height;
  @JsonKey()
  @override
  final double weight;
  @JsonKey()
  @override
  final FietGender gender;
  @JsonKey()
  @override
  final ExerciseExpert exerciseExpert;

  @override
  String toString() {
    return 'FietUser(uuid: $uuid, name: $name, email: $email, nationCode: $nationCode, langCode: $langCode, timezone: $timezone, osType: $osType, osVersion: $osVersion, manufacturer: $manufacturer, model: $model, age: $age, height: $height, weight: $weight, gender: $gender, exerciseExpert: $exerciseExpert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FietUser &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.nationCode, nationCode) &&
            const DeepCollectionEquality().equals(other.langCode, langCode) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality().equals(other.osType, osType) &&
            const DeepCollectionEquality().equals(other.osVersion, osVersion) &&
            const DeepCollectionEquality()
                .equals(other.manufacturer, manufacturer) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.exerciseExpert, exerciseExpert));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(nationCode),
      const DeepCollectionEquality().hash(langCode),
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(osType),
      const DeepCollectionEquality().hash(osVersion),
      const DeepCollectionEquality().hash(manufacturer),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(exerciseExpert));

  @JsonKey(ignore: true)
  @override
  _$FietUserCopyWith<_FietUser> get copyWith =>
      __$FietUserCopyWithImpl<_FietUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FietUserToJson(this);
  }
}

abstract class _FietUser implements FietUser {
  factory _FietUser(
      {String uuid,
      String name,
      String email,
      String nationCode,
      String langCode,
      String timezone,
      String osType,
      String osVersion,
      String manufacturer,
      String model,
      int age,
      double height,
      double weight,
      FietGender gender,
      ExerciseExpert exerciseExpert}) = _$_FietUser;

  factory _FietUser.fromJson(Map<String, dynamic> json) = _$_FietUser.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  String get email;
  @override
  String get nationCode;
  @override
  String get langCode;
  @override
  String get timezone;
  @override
  String get osType;
  @override
  String get osVersion;
  @override
  String get manufacturer;
  @override
  String get model;
  @override
  int get age;
  @override
  double get height;
  @override
  double get weight;
  @override
  FietGender get gender;
  @override
  ExerciseExpert get exerciseExpert;
  @override
  @JsonKey(ignore: true)
  _$FietUserCopyWith<_FietUser> get copyWith =>
      throw _privateConstructorUsedError;
}
