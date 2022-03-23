// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerEntity _$AnswerEntityFromJson(Map<String, dynamic> json) {
  return _AnswerEntity.fromJson(json);
}

/// @nodoc
class _$AnswerEntityTearOff {
  const _$AnswerEntityTearOff();

  _AnswerEntity call(
      {required int index,
      required String key,
      List<dynamic> valueUnit = const [],
      required String desc,
      required String imgUrl,
      required int target}) {
    return _AnswerEntity(
      index: index,
      key: key,
      valueUnit: valueUnit,
      desc: desc,
      imgUrl: imgUrl,
      target: target,
    );
  }

  AnswerEntity fromJson(Map<String, Object?> json) {
    return AnswerEntity.fromJson(json);
  }
}

/// @nodoc
const $AnswerEntity = _$AnswerEntityTearOff();

/// @nodoc
mixin _$AnswerEntity {
  int get index => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  List<dynamic> get valueUnit => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  int get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerEntityCopyWith<AnswerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerEntityCopyWith<$Res> {
  factory $AnswerEntityCopyWith(
          AnswerEntity value, $Res Function(AnswerEntity) then) =
      _$AnswerEntityCopyWithImpl<$Res>;
  $Res call(
      {int index,
      String key,
      List<dynamic> valueUnit,
      String desc,
      String imgUrl,
      int target});
}

/// @nodoc
class _$AnswerEntityCopyWithImpl<$Res> implements $AnswerEntityCopyWith<$Res> {
  _$AnswerEntityCopyWithImpl(this._value, this._then);

  final AnswerEntity _value;
  // ignore: unused_field
  final $Res Function(AnswerEntity) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? key = freezed,
    Object? valueUnit = freezed,
    Object? desc = freezed,
    Object? imgUrl = freezed,
    Object? target = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      valueUnit: valueUnit == freezed
          ? _value.valueUnit
          : valueUnit // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AnswerEntityCopyWith<$Res>
    implements $AnswerEntityCopyWith<$Res> {
  factory _$AnswerEntityCopyWith(
          _AnswerEntity value, $Res Function(_AnswerEntity) then) =
      __$AnswerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index,
      String key,
      List<dynamic> valueUnit,
      String desc,
      String imgUrl,
      int target});
}

/// @nodoc
class __$AnswerEntityCopyWithImpl<$Res> extends _$AnswerEntityCopyWithImpl<$Res>
    implements _$AnswerEntityCopyWith<$Res> {
  __$AnswerEntityCopyWithImpl(
      _AnswerEntity _value, $Res Function(_AnswerEntity) _then)
      : super(_value, (v) => _then(v as _AnswerEntity));

  @override
  _AnswerEntity get _value => super._value as _AnswerEntity;

  @override
  $Res call({
    Object? index = freezed,
    Object? key = freezed,
    Object? valueUnit = freezed,
    Object? desc = freezed,
    Object? imgUrl = freezed,
    Object? target = freezed,
  }) {
    return _then(_AnswerEntity(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      valueUnit: valueUnit == freezed
          ? _value.valueUnit
          : valueUnit // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerEntity implements _AnswerEntity {
  _$_AnswerEntity(
      {required this.index,
      required this.key,
      this.valueUnit = const [],
      required this.desc,
      required this.imgUrl,
      required this.target});

  factory _$_AnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerEntityFromJson(json);

  @override
  final int index;
  @override
  final String key;
  @JsonKey()
  @override
  final List<dynamic> valueUnit;
  @override
  final String desc;
  @override
  final String imgUrl;
  @override
  final int target;

  @override
  String toString() {
    return 'AnswerEntity(index: $index, key: $key, valueUnit: $valueUnit, desc: $desc, imgUrl: $imgUrl, target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerEntity &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.valueUnit, valueUnit) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.imgUrl, imgUrl) &&
            const DeepCollectionEquality().equals(other.target, target));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(valueUnit),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(imgUrl),
      const DeepCollectionEquality().hash(target));

  @JsonKey(ignore: true)
  @override
  _$AnswerEntityCopyWith<_AnswerEntity> get copyWith =>
      __$AnswerEntityCopyWithImpl<_AnswerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerEntityToJson(this);
  }
}

abstract class _AnswerEntity implements AnswerEntity {
  factory _AnswerEntity(
      {required int index,
      required String key,
      List<dynamic> valueUnit,
      required String desc,
      required String imgUrl,
      required int target}) = _$_AnswerEntity;

  factory _AnswerEntity.fromJson(Map<String, dynamic> json) =
      _$_AnswerEntity.fromJson;

  @override
  int get index;
  @override
  String get key;
  @override
  List<dynamic> get valueUnit;
  @override
  String get desc;
  @override
  String get imgUrl;
  @override
  int get target;
  @override
  @JsonKey(ignore: true)
  _$AnswerEntityCopyWith<_AnswerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
