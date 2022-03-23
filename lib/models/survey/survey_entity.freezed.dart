// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SurveyEntityTearOff {
  const _$SurveyEntityTearOff();

  _SurveyEntity call(
      {required int questionIndex,
      required int order,
      required UIType uiType,
      required Category category,
      required QuestionEntity question,
      required List<AnswerEntity> answerList}) {
    return _SurveyEntity(
      questionIndex: questionIndex,
      order: order,
      uiType: uiType,
      category: category,
      question: question,
      answerList: answerList,
    );
  }
}

/// @nodoc
const $SurveyEntity = _$SurveyEntityTearOff();

/// @nodoc
mixin _$SurveyEntity {
  int get questionIndex => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  UIType get uiType => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  QuestionEntity get question => throw _privateConstructorUsedError;
  List<AnswerEntity> get answerList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyEntityCopyWith<SurveyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyEntityCopyWith<$Res> {
  factory $SurveyEntityCopyWith(
          SurveyEntity value, $Res Function(SurveyEntity) then) =
      _$SurveyEntityCopyWithImpl<$Res>;
  $Res call(
      {int questionIndex,
      int order,
      UIType uiType,
      Category category,
      QuestionEntity question,
      List<AnswerEntity> answerList});

  $QuestionEntityCopyWith<$Res> get question;
}

/// @nodoc
class _$SurveyEntityCopyWithImpl<$Res> implements $SurveyEntityCopyWith<$Res> {
  _$SurveyEntityCopyWithImpl(this._value, this._then);

  final SurveyEntity _value;
  // ignore: unused_field
  final $Res Function(SurveyEntity) _then;

  @override
  $Res call({
    Object? questionIndex = freezed,
    Object? order = freezed,
    Object? uiType = freezed,
    Object? category = freezed,
    Object? question = freezed,
    Object? answerList = freezed,
  }) {
    return _then(_value.copyWith(
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      uiType: uiType == freezed
          ? _value.uiType
          : uiType // ignore: cast_nullable_to_non_nullable
              as UIType,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionEntity,
      answerList: answerList == freezed
          ? _value.answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<AnswerEntity>,
    ));
  }

  @override
  $QuestionEntityCopyWith<$Res> get question {
    return $QuestionEntityCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc
abstract class _$SurveyEntityCopyWith<$Res>
    implements $SurveyEntityCopyWith<$Res> {
  factory _$SurveyEntityCopyWith(
          _SurveyEntity value, $Res Function(_SurveyEntity) then) =
      __$SurveyEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int questionIndex,
      int order,
      UIType uiType,
      Category category,
      QuestionEntity question,
      List<AnswerEntity> answerList});

  @override
  $QuestionEntityCopyWith<$Res> get question;
}

/// @nodoc
class __$SurveyEntityCopyWithImpl<$Res> extends _$SurveyEntityCopyWithImpl<$Res>
    implements _$SurveyEntityCopyWith<$Res> {
  __$SurveyEntityCopyWithImpl(
      _SurveyEntity _value, $Res Function(_SurveyEntity) _then)
      : super(_value, (v) => _then(v as _SurveyEntity));

  @override
  _SurveyEntity get _value => super._value as _SurveyEntity;

  @override
  $Res call({
    Object? questionIndex = freezed,
    Object? order = freezed,
    Object? uiType = freezed,
    Object? category = freezed,
    Object? question = freezed,
    Object? answerList = freezed,
  }) {
    return _then(_SurveyEntity(
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      uiType: uiType == freezed
          ? _value.uiType
          : uiType // ignore: cast_nullable_to_non_nullable
              as UIType,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionEntity,
      answerList: answerList == freezed
          ? _value.answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<AnswerEntity>,
    ));
  }
}

/// @nodoc

class _$_SurveyEntity implements _SurveyEntity {
  _$_SurveyEntity(
      {required this.questionIndex,
      required this.order,
      required this.uiType,
      required this.category,
      required this.question,
      required this.answerList});

  @override
  final int questionIndex;
  @override
  final int order;
  @override
  final UIType uiType;
  @override
  final Category category;
  @override
  final QuestionEntity question;
  @override
  final List<AnswerEntity> answerList;

  @override
  String toString() {
    return 'SurveyEntity(questionIndex: $questionIndex, order: $order, uiType: $uiType, category: $category, question: $question, answerList: $answerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyEntity &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.uiType, uiType) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality()
                .equals(other.answerList, answerList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(uiType),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(answerList));

  @JsonKey(ignore: true)
  @override
  _$SurveyEntityCopyWith<_SurveyEntity> get copyWith =>
      __$SurveyEntityCopyWithImpl<_SurveyEntity>(this, _$identity);
}

abstract class _SurveyEntity implements SurveyEntity {
  factory _SurveyEntity(
      {required int questionIndex,
      required int order,
      required UIType uiType,
      required Category category,
      required QuestionEntity question,
      required List<AnswerEntity> answerList}) = _$_SurveyEntity;

  @override
  int get questionIndex;
  @override
  int get order;
  @override
  UIType get uiType;
  @override
  Category get category;
  @override
  QuestionEntity get question;
  @override
  List<AnswerEntity> get answerList;
  @override
  @JsonKey(ignore: true)
  _$SurveyEntityCopyWith<_SurveyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
