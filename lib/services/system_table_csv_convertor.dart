import 'package:csv/csv.dart';
import 'package:drift/drift.dart';
import 'package:fietmobile/data/survey/survey_database.dart';
import 'package:fietmobile/services/csv_convertor.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

class SystemTableCsvConvertor implements CsvConvertor {
  SystemTableCsvConvertor(){
    if (!GetIt.instance.isRegistered<SurveyDatabase>()) {
      GetIt.instance.registerSingleton<SurveyDatabase>(SurveyDatabase());
    }
  }
  @override
  Future insertCsv() async {
    // TODO: implement insertCsv
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

  @override
  Future deleteCsv() async {
    // TODO: implement deleteCsv
    final dao = GetIt.instance<SurveyDatabase>();
    await dao.deleteSystemData();
  }
}
