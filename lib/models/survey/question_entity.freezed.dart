// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionEntity _$QuestionEntityFromJson(Map<String, dynamic> json) {
  return _QuestionEntity.fromJson(json);
}

/// @nodoc
class _$QuestionEntityTearOff {
  const _$QuestionEntityTearOff();

  _QuestionEntity call(
      {required int index,
      required String titleKey,
      required String title,
      required String descKey,
      required String desc}) {
    return _QuestionEntity(
      index: index,
      titleKey: titleKey,
      title: title,
      descKey: descKey,
      desc: desc,
    );
  }

  QuestionEntity fromJson(Map<String, Object?> json) {
    return QuestionEntity.fromJson(json);
  }
}

/// @nodoc
const $QuestionEntity = _$QuestionEntityTearOff();

/// @nodoc
mixin _$QuestionEntity {
  int get index => throw _privateConstructorUsedError;
  String get titleKey => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get descKey => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionEntityCopyWith<QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEntityCopyWith<$Res> {
  factory $QuestionEntityCopyWith(
          QuestionEntity value, $Res Function(QuestionEntity) then) =
      _$QuestionEntityCopyWithImpl<$Res>;
  $Res call(
      {int index, String titleKey, String title, String descKey, String desc});
}

/// @nodoc
class _$QuestionEntityCopyWithImpl<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  _$QuestionEntityCopyWithImpl(this._value, this._then);

  final QuestionEntity _value;
  // ignore: unused_field
  final $Res Function(QuestionEntity) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? titleKey = freezed,
    Object? title = freezed,
    Object? descKey = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      titleKey: titleKey == freezed
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      descKey: descKey == freezed
          ? _value.descKey
          : descKey // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$QuestionEntityCopyWith<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  factory _$QuestionEntityCopyWith(
          _QuestionEntity value, $Res Function(_QuestionEntity) then) =
      __$QuestionEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index, String titleKey, String title, String descKey, String desc});
}

/// @nodoc
class __$QuestionEntityCopyWithImpl<$Res>
    extends _$QuestionEntityCopyWithImpl<$Res>
    implements _$QuestionEntityCopyWith<$Res> {
  __$QuestionEntityCopyWithImpl(
      _QuestionEntity _value, $Res Function(_QuestionEntity) _then)
      : super(_value, (v) => _then(v as _QuestionEntity));

  @override
  _QuestionEntity get _value => super._value as _QuestionEntity;

  @override
  $Res call({
    Object? index = freezed,
    Object? titleKey = freezed,
    Object? title = freezed,
    Object? descKey = freezed,
    Object? desc = freezed,
  }) {
    return _then(_QuestionEntity(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      titleKey: titleKey == freezed
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      descKey: descKey == freezed
          ? _value.descKey
          : descKey // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionEntity implements _QuestionEntity {
  _$_QuestionEntity(
      {required this.index,
      required this.titleKey,
      required this.title,
      required this.descKey,
      required this.desc});

  factory _$_QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionEntityFromJson(json);

  @override
  final int index;
  @override
  final String titleKey;
  @override
  final String title;
  @override
  final String descKey;
  @override
  final String desc;

  @override
  String toString() {
    return 'QuestionEntity(index: $index, titleKey: $titleKey, title: $title, descKey: $descKey, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionEntity &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.titleKey, titleKey) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.descKey, descKey) &&
            const DeepCollectionEquality().equals(other.desc, desc));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(titleKey),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(descKey),
      const DeepCollectionEquality().hash(desc));

  @JsonKey(ignore: true)
  @override
  _$QuestionEntityCopyWith<_QuestionEntity> get copyWith =>
      __$QuestionEntityCopyWithImpl<_QuestionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionEntityToJson(this);
  }
}

abstract class _QuestionEntity implements QuestionEntity {
  factory _QuestionEntity(
      {required int index,
      required String titleKey,
      required String title,
      required String descKey,
      required String desc}) = _$_QuestionEntity;

  factory _QuestionEntity.fromJson(Map<String, dynamic> json) =
      _$_QuestionEntity.fromJson;

  @override
  int get index;
  @override
  String get titleKey;
  @override
  String get title;
  @override
  String get descKey;
  @override
  String get desc;
  @override
  @JsonKey(ignore: true)
  _$QuestionEntityCopyWith<_QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
