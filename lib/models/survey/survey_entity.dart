
import 'package:fietmobile/models/survey/question_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'answer_entity.dart';

part 'survey_entity.freezed.dart';

enum Category { normal, mealPlan, exercise, habit, etc }
enum UIType { type1, type2, type3, type4, type5, type6, type7, type8 }

@freezed
class SurveyEntity with _$SurveyEntity {
  factory SurveyEntity({
    required int questionIndex,
    required int order,
    required UIType uiType,
    required Category category,
    required QuestionEntity question,
    required List<AnswerEntity> answerList,
  }) = _SurveyEntity;
}
