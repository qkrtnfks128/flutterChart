import 'package:csv/csv.dart';
import 'package:drift/drift.dart';
import 'package:fietmobile/data/survey/survey_database.dart';
import 'package:fietmobile/services/csv_convertor.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

class AnswerTableCsvConvertor implements CsvConvertor {
  AnswerTableCsvConvertor(){
    if (!GetIt.instance.isRegistered<SurveyDatabase>()) {
      GetIt.instance.registerSingleton<SurveyDatabase>(SurveyDatabase());
    }
  }
  @override
  Future insertCsv() async {
    // TODO: implement insertCSV
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

  @override
  Future deleteCsv() async {
    // TODO: implement deleteCsv
    final dao = GetIt.instance<SurveyDatabase>();
    await dao.deleteAnswerData();
  }
}
