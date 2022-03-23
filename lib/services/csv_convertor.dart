

import 'package:csv/csv.dart';
import 'package:drift/drift.dart';
import 'package:fietmobile/data/survey/survey_database.dart';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';



class CsvConvertor {
  CsvConvertor() {
    if (!GetIt.instance.isRegistered<SurveyDatabase>()) {
      GetIt.instance.registerSingleton<SurveyDatabase>(SurveyDatabase());
    }
  }


  Future loadAndInsertSystemTableCSV() async {
    final dao = GetIt.instance<SurveyDatabase>();
    int csvCategory = 0;

    List<List<dynamic>> data;
    final rawData = await rootBundle.loadString("assets/csv/system_table.csv");
    List<List<dynamic>> _listData = const CsvToListConverter().convert(rawData);
    data = _listData;
    for (var row = 1; row < data.length - 1; row++) {
      dao.addSystemData(SystemsCompanion(
        order: Value(data[row][1]),
        category: Value(data[row][2].toString()),
        questionIndex: Value(data[row][3]),
        answerType: Value(data[row][4]),
        answerIndex: Value(data[row][5].toString()),
        nextQuestion: Value(data[row][6].toString()),
      ));
    }
  }

  Future loadAndInsertQuestionTableCSV() async {
    final dao = GetIt.instance<SurveyDatabase>();
    int csvCategory = 0;

    List<List<dynamic>> data;
    final rawData = await rootBundle.loadString("assets/csv/question_table.csv");
    List<List<dynamic>> _listData = const CsvToListConverter().convert(rawData);
    data = _listData;
    for (var row = 1; row < data.length; row++) {
      dao.addQuestionData(QuestionsCompanion(
        index: Value(data[row][0]),
        questionTitleKey: Value(data[row][1]),
        questionTitle: Value(data[row][2]),
        questionDescKey: Value(data[row][3]),
        questionDesc: Value(data[row][4]),
      ));
    }
  }

  Future loadAndInsertAnswerTableCSV() async {
    final dao = GetIt.instance<SurveyDatabase>();
    int csvCategory = 0;

    List<List<dynamic>> data;
    final rawData = await rootBundle.loadString("assets/csv/answer_table.csv");
    List<List<dynamic>> _listData = const CsvToListConverter().convert(rawData);
    data = _listData;

    for (var row = 1; row < data.length; row++) {
      dao.addAnswerData(AnswersCompanion(
        index: Value(data[row][0]),
        answerKey: Value(data[row][1].toString()),
        answerValue: Value(data[row][2].toString()),
        answerDesc: Value(data[row][3].toString()),
        answerImgUrl: Value(data[row][4].toString()),
      ));
    }
  }

  Future deleteAllData() async {
    final dao = GetIt.instance<SurveyDatabase>();
    await dao.deleteAllData();
  }
}
