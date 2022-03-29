import 'package:fietmobile/data/survey/survey_database.dart';
import 'package:get_it/get_it.dart';

abstract class CsvConvertor {
  CsvConvertor();
  Future insertCsv();

  Future deleteCsv();
}
