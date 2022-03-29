import 'package:csv/csv.dart';
import 'package:drift/drift.dart';
import 'package:fietmobile/data/survey/survey_database.dart';
import 'package:fietmobile/services/csv_convertor.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

class QuestionTableCsvConvertor implements CsvConvertor {
  QuestionTableCsvConvertor(){
    if (!GetIt.instance.isRegistered<SurveyDatabase>()) {
      GetIt.instance.registerSingleton<SurveyDatabase>(SurveyDatabase());
    }
  }

  @override
  Future insertCsv() async {
    final dao = GetIt.instance<SurveyDatabase>();
    int csvCategory = 0;

    List<List<dynamic>> data;
    final rawData =
    await rootBundle.loadString("assets/csv/question_table.csv");
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

  @override
  Future deleteCsv() async {
    // TODO: implement deleteCsv
    final dao = GetIt.instance<SurveyDatabase>();
    await dao.deleteQuestionData();
  }
}


