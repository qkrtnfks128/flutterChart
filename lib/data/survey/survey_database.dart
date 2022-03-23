import 'dart:io';

import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';

part 'survey_database.g.dart';

class Systems extends Table {
  IntColumn get questionIndex => integer()();

  IntColumn get order => integer()();

  TextColumn get category => text()();

  IntColumn get answerType => integer()();

  TextColumn get answerIndex => text()();

  TextColumn get nextQuestion => text()();
}

class Answers extends Table {
  IntColumn get index => integer()();

  TextColumn get answerKey => text()();

  TextColumn get answerValue => text()();

  TextColumn get answerDesc => text()();

  TextColumn get answerImgUrl => text()();
}

class Questions extends Table {
  IntColumn get index => integer()();

  TextColumn get questionTitleKey => text()();

  TextColumn get questionTitle => text()();

  TextColumn get questionDescKey => text()();

  TextColumn get questionDesc => text()();
}

@DriftDatabase(tables: [Systems, Answers, Questions])
class SurveyDatabase extends _$SurveyDatabase {
  SurveyDatabase() : super(_openConnection());


  Future<List<System>> get allSystemTables => select(systems).get();

  Future<List<Question>> get allQuestionTables =>
      select(questions).get();

  Future<List<Answer>> get allAnswerTables => select(answers).get();

  Future<System> systemDataByOrder(int order) {
    return (select(systems)..where((tbl) => tbl.order.equals(order)))
        .getSingle();
  }

  Future<Question> questionDataByIndex(int index) {
    return (select(questions)..where((tbl) => tbl.index.equals(index)))
        .getSingle();
  }

  Future<Answer> answerDataByIndex(int index) {
    return (select(answers)..where((tbl) => tbl.index.equals(index)))
        .getSingle();
  }

  Future addSystemData(SystemsCompanion entry) {
    return into(systems).insert(entry);
  }

  Future addQuestionData(QuestionsCompanion entry) {
    return into(questions).insert(entry);
  }

  Future addAnswerData(AnswersCompanion entry) {
    return into(answers).insert(entry);
  }

  Future deleteAllData() async {
    await delete(systems).go();
    await delete(questions).go();
    await delete(answers).go();
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'survey.sqlite'));
    return NativeDatabase(file);
  });
}
