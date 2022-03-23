import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_entity.freezed.dart';
part 'question_entity.g.dart';

@freezed
class QuestionEntity with _$QuestionEntity {
  factory QuestionEntity({
    required int index,
    required String titleKey,
    required String title,
    required String descKey,
    required String desc,
  }) = _QuestionEntity;

  factory QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$QuestionEntityFromJson(json);
}