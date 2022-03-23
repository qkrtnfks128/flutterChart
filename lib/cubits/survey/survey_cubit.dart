import 'package:bloc/bloc.dart';
import 'package:fietmobile/data/survey/survey_database.dart';
import 'package:fietmobile/models/survey/survey_model_index.dart';
import 'package:fietmobile/services/csv_convertor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';


part 'survey_state.dart';
part 'survey_cubit.freezed.dart';

class SurveyCubit extends Cubit<SurveyState> {
  SurveyCubit()
      : super(SurveyState.initial(SurveyEntity(
    questionIndex: 0,
    order: 0,
    uiType: UIType.type1,
    category: Category.normal,
    question: QuestionEntity(
        index: 0,
        desc: '',
        titleKey: '',
        descKey: '',
        title: ''),
    answerList: [
      AnswerEntity(
        index: 0,
        desc: '',
        imgUrl: '',
        key: '',
        target: 0,
        valueUnit: [],
      )
    ],
  )));

  void loadSurveyData(int order) async {
    emit(SurveyState.loading());


    try {
      if (!GetIt.instance.isRegistered<SurveyDatabase>()) {
        GetIt.instance.registerSingleton<SurveyDatabase>(SurveyDatabase());
      }

      final dao = GetIt.instance<SurveyDatabase>();

      await dao.deleteAllData();

      CsvConvertor convertor = CsvConvertor();
      await convertor.loadAndInsertAnswerTableCSV();
      await convertor.loadAndInsertQuestionTableCSV();
      await convertor.loadAndInsertSystemTableCSV();


      final system = await dao.systemDataByOrder(order);
      final question = await dao.questionDataByIndex(system.questionIndex);
      final answerList =
      system.answerIndex.split(',').map((e) => int.parse(e)).toList();
      final targetList =
      system.nextQuestion.split(',').map((e) => int.parse(e)).toList();

      List<AnswerEntity> answerListData = [];
      for (var i in answerList) {
        var count = 0;
        final answer = await dao.answerDataByIndex(i);
        answerListData.add(
          AnswerEntity(
            index: answer.index,
            key: answer.answerKey,
            desc: answer.answerDesc,
            imgUrl: answer.answerImgUrl,
            target: targetList[count],
            valueUnit: answer.answerValue.split(',').toList(),
          ),
        );
        count++;
      }

      var category = Category.normal;
      switch (system.category) {
        case "normal":
          category = Category.normal;
          break;
        case "mealPlan":
          category = Category.mealPlan;
          break;
        case "exercise":
          category = Category.exercise;
          break;
        case "habit":
          category = Category.habit;
          break;
        case "etc":
        default:
          category = Category.etc;
          break;
      }

      var uiType = UIType.type1;
      switch (system.answerType) {
        case 1:
          uiType = UIType.type1;
          break;
        case 2:
          uiType = UIType.type2;
          break;
        case 3:
          uiType = UIType.type3;
          break;
        case 4:
          uiType = UIType.type4;
          break;
        case 5:
          uiType = UIType.type5;
          break;
        case 6:
          uiType = UIType.type6;
          break;
        case 7:
          uiType = UIType.type7;
          break;
        case 8:
          uiType = UIType.type8;
          break;
      }

      SurveyEntity entity = SurveyEntity(
        questionIndex: system.questionIndex,
        order: order,
        uiType: uiType,
        category: category,
        question: QuestionEntity(
          desc: question.questionDesc,
          index: question.index,
          title: question.questionTitle,
          descKey: question.questionDescKey,
          titleKey: question.questionTitleKey,
        ),
        answerList: answerListData,
      );
      print(entity.toString());
      emit(SurveyState.loaded(entity));
    } catch (e) {
      emit(SurveyState.error(e.toString()));
    }
  }

  // void addSurveyAnswer(AnswerReturn answer){
  //   if(!GetIt.instance.isRegistered<SendSurveyReturn>()){
  //     GetIt.instance.registerSingleton(SendSurveyReturn());
  //   }
  //
  //   final surveyReturnInstance = GetIt.instance<SendSurveyReturn>();
  //
  //   surveyReturnInstance.addAnswerReturn(answer);
  // }

  // void navigateSurveyPage(BuildContext context, UIType uiType) {
  //   String nextPageRoute;
  //
  //   switch (uiType) {
  //     case UIType.type1:
  //       nextPageRoute = '/survey/type1';
  //       break;
  //     case UIType.type2:
  //       nextPageRoute = '/survey/type2';
  //       break;
  //     case UIType.type3:
  //       nextPageRoute = '/survey/type2';
  //       break;
  //     case UIType.type4:
  //       nextPageRoute = '/survey/type2';
  //       break;
  //     case UIType.type5:
  //       nextPageRoute = '/survey/type5';
  //       break;
  //     case UIType.type6:
  //       nextPageRoute = '/survey/type6';
  //       break;
  //     case UIType.type7:
  //       nextPageRoute = '/survey/type6';
  //       break;
  //     case UIType.type8:
  //       nextPageRoute = '/survey/type6';
  //       break;
  //   }
  //
  //
  //
  //   Navigator.of(context).pushNamed(nextPageRoute);
  // }
}
