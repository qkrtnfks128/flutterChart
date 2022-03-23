part of 'survey_cubit.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState.initial(SurveyEntity initSurveyEntity) = _Initial;
  const factory SurveyState.loading() = _Loading;
  const factory SurveyState.error(String message) = _Error;
  const factory SurveyState.loaded(SurveyEntity newSurveyEntity) = _Loaded;
}
