// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_return.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerReturn _$AnswerReturnFromJson(Map<String, dynamic> json) {
  return _AnswerReturn.fromJson(json);
}

/// @nodoc
class _$AnswerReturnTearOff {
  const _$AnswerReturnTearOff();

  _AnswerReturn call(
      {required String uid,
      required String questionIndex,
      required String answerIndex}) {
    return _AnswerReturn(
      uid: uid,
      questionIndex: questionIndex,
      answerIndex: answerIndex,
    );
  }

  AnswerReturn fromJson(Map<String, Object?> json) {
    return AnswerReturn.fromJson(json);
  }
}

/// @nodoc
const $AnswerReturn = _$AnswerReturnTearOff();

/// @nodoc
mixin _$AnswerReturn {
  String get uid => throw _privateConstructorUsedError;
  String get questionIndex => throw _privateConstructorUsedError;
  String get answerIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerReturnCopyWith<AnswerReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerReturnCopyWith<$Res> {
  factory $AnswerReturnCopyWith(
          AnswerReturn value, $Res Function(AnswerReturn) then) =
      _$AnswerReturnCopyWithImpl<$Res>;
  $Res call({String uid, String questionIndex, String answerIndex});
}

/// @nodoc
class _$AnswerReturnCopyWithImpl<$Res> implements $AnswerReturnCopyWith<$Res> {
  _$AnswerReturnCopyWithImpl(this._value, this._then);

  final AnswerReturn _value;
  // ignore: unused_field
  final $Res Function(AnswerReturn) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? questionIndex = freezed,
    Object? answerIndex = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as String,
      answerIndex: answerIndex == freezed
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AnswerReturnCopyWith<$Res>
    implements $AnswerReturnCopyWith<$Res> {
  factory _$AnswerReturnCopyWith(
          _AnswerReturn value, $Res Function(_AnswerReturn) then) =
      __$AnswerReturnCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String questionIndex, String answerIndex});
}

/// @nodoc
class __$AnswerReturnCopyWithImpl<$Res> extends _$AnswerReturnCopyWithImpl<$Res>
    implements _$AnswerReturnCopyWith<$Res> {
  __$AnswerReturnCopyWithImpl(
      _AnswerReturn _value, $Res Function(_AnswerReturn) _then)
      : super(_value, (v) => _then(v as _AnswerReturn));

  @override
  _AnswerReturn get _value => super._value as _AnswerReturn;

  @override
  $Res call({
    Object? uid = freezed,
    Object? questionIndex = freezed,
    Object? answerIndex = freezed,
  }) {
    return _then(_AnswerReturn(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as String,
      answerIndex: answerIndex == freezed
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerReturn implements _AnswerReturn {
  _$_AnswerReturn(
      {required this.uid,
      required this.questionIndex,
      required this.answerIndex});

  factory _$_AnswerReturn.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerReturnFromJson(json);

  @override
  final String uid;
  @override
  final String questionIndex;
  @override
  final String answerIndex;

  @override
  String toString() {
    return 'AnswerReturn(uid: $uid, questionIndex: $questionIndex, answerIndex: $answerIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerReturn &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality()
                .equals(other.answerIndex, answerIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(answerIndex));

  @JsonKey(ignore: true)
  @override
  _$AnswerReturnCopyWith<_AnswerReturn> get copyWith =>
      __$AnswerReturnCopyWithImpl<_AnswerReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerReturnToJson(this);
  }
}

abstract class _AnswerReturn implements AnswerReturn {
  factory _AnswerReturn(
      {required String uid,
      required String questionIndex,
      required String answerIndex}) = _$_AnswerReturn;

  factory _AnswerReturn.fromJson(Map<String, dynamic> json) =
      _$_AnswerReturn.fromJson;

  @override
  String get uid;
  @override
  String get questionIndex;
  @override
  String get answerIndex;
  @override
  @JsonKey(ignore: true)
  _$AnswerReturnCopyWith<_AnswerReturn> get copyWith =>
      throw _privateConstructorUsedError;
}
