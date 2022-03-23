// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class System extends DataClass implements Insertable<System> {
  final int questionIndex;
  final int order;
  final String category;
  final int answerType;
  final String answerIndex;
  final String nextQuestion;
  System(
      {required this.questionIndex,
      required this.order,
      required this.category,
      required this.answerType,
      required this.answerIndex,
      required this.nextQuestion});
  factory System.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return System(
      questionIndex: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}question_index'])!,
      order: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      answerType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_type'])!,
      answerIndex: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_index'])!,
      nextQuestion: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}next_question'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['question_index'] = Variable<int>(questionIndex);
    map['order'] = Variable<int>(order);
    map['category'] = Variable<String>(category);
    map['answer_type'] = Variable<int>(answerType);
    map['answer_index'] = Variable<String>(answerIndex);
    map['next_question'] = Variable<String>(nextQuestion);
    return map;
  }

  SystemsCompanion toCompanion(bool nullToAbsent) {
    return SystemsCompanion(
      questionIndex: Value(questionIndex),
      order: Value(order),
      category: Value(category),
      answerType: Value(answerType),
      answerIndex: Value(answerIndex),
      nextQuestion: Value(nextQuestion),
    );
  }

  factory System.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return System(
      questionIndex: serializer.fromJson<int>(json['questionIndex']),
      order: serializer.fromJson<int>(json['order']),
      category: serializer.fromJson<String>(json['category']),
      answerType: serializer.fromJson<int>(json['answerType']),
      answerIndex: serializer.fromJson<String>(json['answerIndex']),
      nextQuestion: serializer.fromJson<String>(json['nextQuestion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'questionIndex': serializer.toJson<int>(questionIndex),
      'order': serializer.toJson<int>(order),
      'category': serializer.toJson<String>(category),
      'answerType': serializer.toJson<int>(answerType),
      'answerIndex': serializer.toJson<String>(answerIndex),
      'nextQuestion': serializer.toJson<String>(nextQuestion),
    };
  }

  System copyWith(
          {int? questionIndex,
          int? order,
          String? category,
          int? answerType,
          String? answerIndex,
          String? nextQuestion}) =>
      System(
        questionIndex: questionIndex ?? this.questionIndex,
        order: order ?? this.order,
        category: category ?? this.category,
        answerType: answerType ?? this.answerType,
        answerIndex: answerIndex ?? this.answerIndex,
        nextQuestion: nextQuestion ?? this.nextQuestion,
      );
  @override
  String toString() {
    return (StringBuffer('System(')
          ..write('questionIndex: $questionIndex, ')
          ..write('order: $order, ')
          ..write('category: $category, ')
          ..write('answerType: $answerType, ')
          ..write('answerIndex: $answerIndex, ')
          ..write('nextQuestion: $nextQuestion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      questionIndex, order, category, answerType, answerIndex, nextQuestion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is System &&
          other.questionIndex == this.questionIndex &&
          other.order == this.order &&
          other.category == this.category &&
          other.answerType == this.answerType &&
          other.answerIndex == this.answerIndex &&
          other.nextQuestion == this.nextQuestion);
}

class SystemsCompanion extends UpdateCompanion<System> {
  final Value<int> questionIndex;
  final Value<int> order;
  final Value<String> category;
  final Value<int> answerType;
  final Value<String> answerIndex;
  final Value<String> nextQuestion;
  const SystemsCompanion({
    this.questionIndex = const Value.absent(),
    this.order = const Value.absent(),
    this.category = const Value.absent(),
    this.answerType = const Value.absent(),
    this.answerIndex = const Value.absent(),
    this.nextQuestion = const Value.absent(),
  });
  SystemsCompanion.insert({
    required int questionIndex,
    required int order,
    required String category,
    required int answerType,
    required String answerIndex,
    required String nextQuestion,
  })  : questionIndex = Value(questionIndex),
        order = Value(order),
        category = Value(category),
        answerType = Value(answerType),
        answerIndex = Value(answerIndex),
        nextQuestion = Value(nextQuestion);
  static Insertable<System> custom({
    Expression<int>? questionIndex,
    Expression<int>? order,
    Expression<String>? category,
    Expression<int>? answerType,
    Expression<String>? answerIndex,
    Expression<String>? nextQuestion,
  }) {
    return RawValuesInsertable({
      if (questionIndex != null) 'question_index': questionIndex,
      if (order != null) 'order': order,
      if (category != null) 'category': category,
      if (answerType != null) 'answer_type': answerType,
      if (answerIndex != null) 'answer_index': answerIndex,
      if (nextQuestion != null) 'next_question': nextQuestion,
    });
  }

  SystemsCompanion copyWith(
      {Value<int>? questionIndex,
      Value<int>? order,
      Value<String>? category,
      Value<int>? answerType,
      Value<String>? answerIndex,
      Value<String>? nextQuestion}) {
    return SystemsCompanion(
      questionIndex: questionIndex ?? this.questionIndex,
      order: order ?? this.order,
      category: category ?? this.category,
      answerType: answerType ?? this.answerType,
      answerIndex: answerIndex ?? this.answerIndex,
      nextQuestion: nextQuestion ?? this.nextQuestion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (questionIndex.present) {
      map['question_index'] = Variable<int>(questionIndex.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (answerType.present) {
      map['answer_type'] = Variable<int>(answerType.value);
    }
    if (answerIndex.present) {
      map['answer_index'] = Variable<String>(answerIndex.value);
    }
    if (nextQuestion.present) {
      map['next_question'] = Variable<String>(nextQuestion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SystemsCompanion(')
          ..write('questionIndex: $questionIndex, ')
          ..write('order: $order, ')
          ..write('category: $category, ')
          ..write('answerType: $answerType, ')
          ..write('answerIndex: $answerIndex, ')
          ..write('nextQuestion: $nextQuestion')
          ..write(')'))
        .toString();
  }
}

class $SystemsTable extends Systems with TableInfo<$SystemsTable, System> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SystemsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _questionIndexMeta =
      const VerificationMeta('questionIndex');
  @override
  late final GeneratedColumn<int?> questionIndex = GeneratedColumn<int?>(
      'question_index', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int?> order = GeneratedColumn<int?>(
      'order', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _answerTypeMeta = const VerificationMeta('answerType');
  @override
  late final GeneratedColumn<int?> answerType = GeneratedColumn<int?>(
      'answer_type', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _answerIndexMeta =
      const VerificationMeta('answerIndex');
  @override
  late final GeneratedColumn<String?> answerIndex = GeneratedColumn<String?>(
      'answer_index', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nextQuestionMeta =
      const VerificationMeta('nextQuestion');
  @override
  late final GeneratedColumn<String?> nextQuestion = GeneratedColumn<String?>(
      'next_question', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [questionIndex, order, category, answerType, answerIndex, nextQuestion];
  @override
  String get aliasedName => _alias ?? 'systems';
  @override
  String get actualTableName => 'systems';
  @override
  VerificationContext validateIntegrity(Insertable<System> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('question_index')) {
      context.handle(
          _questionIndexMeta,
          questionIndex.isAcceptableOrUnknown(
              data['question_index']!, _questionIndexMeta));
    } else if (isInserting) {
      context.missing(_questionIndexMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('answer_type')) {
      context.handle(
          _answerTypeMeta,
          answerType.isAcceptableOrUnknown(
              data['answer_type']!, _answerTypeMeta));
    } else if (isInserting) {
      context.missing(_answerTypeMeta);
    }
    if (data.containsKey('answer_index')) {
      context.handle(
          _answerIndexMeta,
          answerIndex.isAcceptableOrUnknown(
              data['answer_index']!, _answerIndexMeta));
    } else if (isInserting) {
      context.missing(_answerIndexMeta);
    }
    if (data.containsKey('next_question')) {
      context.handle(
          _nextQuestionMeta,
          nextQuestion.isAcceptableOrUnknown(
              data['next_question']!, _nextQuestionMeta));
    } else if (isInserting) {
      context.missing(_nextQuestionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  System map(Map<String, dynamic> data, {String? tablePrefix}) {
    return System.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SystemsTable createAlias(String alias) {
    return $SystemsTable(attachedDatabase, alias);
  }
}

class Answer extends DataClass implements Insertable<Answer> {
  final int index;
  final String answerKey;
  final String answerValue;
  final String answerDesc;
  final String answerImgUrl;
  Answer(
      {required this.index,
      required this.answerKey,
      required this.answerValue,
      required this.answerDesc,
      required this.answerImgUrl});
  factory Answer.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Answer(
      index: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}index'])!,
      answerKey: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_key'])!,
      answerValue: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_value'])!,
      answerDesc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_desc'])!,
      answerImgUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_img_url'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['index'] = Variable<int>(index);
    map['answer_key'] = Variable<String>(answerKey);
    map['answer_value'] = Variable<String>(answerValue);
    map['answer_desc'] = Variable<String>(answerDesc);
    map['answer_img_url'] = Variable<String>(answerImgUrl);
    return map;
  }

  AnswersCompanion toCompanion(bool nullToAbsent) {
    return AnswersCompanion(
      index: Value(index),
      answerKey: Value(answerKey),
      answerValue: Value(answerValue),
      answerDesc: Value(answerDesc),
      answerImgUrl: Value(answerImgUrl),
    );
  }

  factory Answer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Answer(
      index: serializer.fromJson<int>(json['index']),
      answerKey: serializer.fromJson<String>(json['answerKey']),
      answerValue: serializer.fromJson<String>(json['answerValue']),
      answerDesc: serializer.fromJson<String>(json['answerDesc']),
      answerImgUrl: serializer.fromJson<String>(json['answerImgUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'index': serializer.toJson<int>(index),
      'answerKey': serializer.toJson<String>(answerKey),
      'answerValue': serializer.toJson<String>(answerValue),
      'answerDesc': serializer.toJson<String>(answerDesc),
      'answerImgUrl': serializer.toJson<String>(answerImgUrl),
    };
  }

  Answer copyWith(
          {int? index,
          String? answerKey,
          String? answerValue,
          String? answerDesc,
          String? answerImgUrl}) =>
      Answer(
        index: index ?? this.index,
        answerKey: answerKey ?? this.answerKey,
        answerValue: answerValue ?? this.answerValue,
        answerDesc: answerDesc ?? this.answerDesc,
        answerImgUrl: answerImgUrl ?? this.answerImgUrl,
      );
  @override
  String toString() {
    return (StringBuffer('Answer(')
          ..write('index: $index, ')
          ..write('answerKey: $answerKey, ')
          ..write('answerValue: $answerValue, ')
          ..write('answerDesc: $answerDesc, ')
          ..write('answerImgUrl: $answerImgUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(index, answerKey, answerValue, answerDesc, answerImgUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Answer &&
          other.index == this.index &&
          other.answerKey == this.answerKey &&
          other.answerValue == this.answerValue &&
          other.answerDesc == this.answerDesc &&
          other.answerImgUrl == this.answerImgUrl);
}

class AnswersCompanion extends UpdateCompanion<Answer> {
  final Value<int> index;
  final Value<String> answerKey;
  final Value<String> answerValue;
  final Value<String> answerDesc;
  final Value<String> answerImgUrl;
  const AnswersCompanion({
    this.index = const Value.absent(),
    this.answerKey = const Value.absent(),
    this.answerValue = const Value.absent(),
    this.answerDesc = const Value.absent(),
    this.answerImgUrl = const Value.absent(),
  });
  AnswersCompanion.insert({
    required int index,
    required String answerKey,
    required String answerValue,
    required String answerDesc,
    required String answerImgUrl,
  })  : index = Value(index),
        answerKey = Value(answerKey),
        answerValue = Value(answerValue),
        answerDesc = Value(answerDesc),
        answerImgUrl = Value(answerImgUrl);
  static Insertable<Answer> custom({
    Expression<int>? index,
    Expression<String>? answerKey,
    Expression<String>? answerValue,
    Expression<String>? answerDesc,
    Expression<String>? answerImgUrl,
  }) {
    return RawValuesInsertable({
      if (index != null) 'index': index,
      if (answerKey != null) 'answer_key': answerKey,
      if (answerValue != null) 'answer_value': answerValue,
      if (answerDesc != null) 'answer_desc': answerDesc,
      if (answerImgUrl != null) 'answer_img_url': answerImgUrl,
    });
  }

  AnswersCompanion copyWith(
      {Value<int>? index,
      Value<String>? answerKey,
      Value<String>? answerValue,
      Value<String>? answerDesc,
      Value<String>? answerImgUrl}) {
    return AnswersCompanion(
      index: index ?? this.index,
      answerKey: answerKey ?? this.answerKey,
      answerValue: answerValue ?? this.answerValue,
      answerDesc: answerDesc ?? this.answerDesc,
      answerImgUrl: answerImgUrl ?? this.answerImgUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (index.present) {
      map['index'] = Variable<int>(index.value);
    }
    if (answerKey.present) {
      map['answer_key'] = Variable<String>(answerKey.value);
    }
    if (answerValue.present) {
      map['answer_value'] = Variable<String>(answerValue.value);
    }
    if (answerDesc.present) {
      map['answer_desc'] = Variable<String>(answerDesc.value);
    }
    if (answerImgUrl.present) {
      map['answer_img_url'] = Variable<String>(answerImgUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnswersCompanion(')
          ..write('index: $index, ')
          ..write('answerKey: $answerKey, ')
          ..write('answerValue: $answerValue, ')
          ..write('answerDesc: $answerDesc, ')
          ..write('answerImgUrl: $answerImgUrl')
          ..write(')'))
        .toString();
  }
}

class $AnswersTable extends Answers with TableInfo<$AnswersTable, Answer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnswersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _indexMeta = const VerificationMeta('index');
  @override
  late final GeneratedColumn<int?> index = GeneratedColumn<int?>(
      'index', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _answerKeyMeta = const VerificationMeta('answerKey');
  @override
  late final GeneratedColumn<String?> answerKey = GeneratedColumn<String?>(
      'answer_key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _answerValueMeta =
      const VerificationMeta('answerValue');
  @override
  late final GeneratedColumn<String?> answerValue = GeneratedColumn<String?>(
      'answer_value', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _answerDescMeta = const VerificationMeta('answerDesc');
  @override
  late final GeneratedColumn<String?> answerDesc = GeneratedColumn<String?>(
      'answer_desc', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _answerImgUrlMeta =
      const VerificationMeta('answerImgUrl');
  @override
  late final GeneratedColumn<String?> answerImgUrl = GeneratedColumn<String?>(
      'answer_img_url', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [index, answerKey, answerValue, answerDesc, answerImgUrl];
  @override
  String get aliasedName => _alias ?? 'answers';
  @override
  String get actualTableName => 'answers';
  @override
  VerificationContext validateIntegrity(Insertable<Answer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('index')) {
      context.handle(
          _indexMeta, index.isAcceptableOrUnknown(data['index']!, _indexMeta));
    } else if (isInserting) {
      context.missing(_indexMeta);
    }
    if (data.containsKey('answer_key')) {
      context.handle(_answerKeyMeta,
          answerKey.isAcceptableOrUnknown(data['answer_key']!, _answerKeyMeta));
    } else if (isInserting) {
      context.missing(_answerKeyMeta);
    }
    if (data.containsKey('answer_value')) {
      context.handle(
          _answerValueMeta,
          answerValue.isAcceptableOrUnknown(
              data['answer_value']!, _answerValueMeta));
    } else if (isInserting) {
      context.missing(_answerValueMeta);
    }
    if (data.containsKey('answer_desc')) {
      context.handle(
          _answerDescMeta,
          answerDesc.isAcceptableOrUnknown(
              data['answer_desc']!, _answerDescMeta));
    } else if (isInserting) {
      context.missing(_answerDescMeta);
    }
    if (data.containsKey('answer_img_url')) {
      context.handle(
          _answerImgUrlMeta,
          answerImgUrl.isAcceptableOrUnknown(
              data['answer_img_url']!, _answerImgUrlMeta));
    } else if (isInserting) {
      context.missing(_answerImgUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Answer map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Answer.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AnswersTable createAlias(String alias) {
    return $AnswersTable(attachedDatabase, alias);
  }
}

class Question extends DataClass implements Insertable<Question> {
  final int index;
  final String questionTitleKey;
  final String questionTitle;
  final String questionDescKey;
  final String questionDesc;
  Question(
      {required this.index,
      required this.questionTitleKey,
      required this.questionTitle,
      required this.questionDescKey,
      required this.questionDesc});
  factory Question.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Question(
      index: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}index'])!,
      questionTitleKey: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}question_title_key'])!,
      questionTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}question_title'])!,
      questionDescKey: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}question_desc_key'])!,
      questionDesc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}question_desc'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['index'] = Variable<int>(index);
    map['question_title_key'] = Variable<String>(questionTitleKey);
    map['question_title'] = Variable<String>(questionTitle);
    map['question_desc_key'] = Variable<String>(questionDescKey);
    map['question_desc'] = Variable<String>(questionDesc);
    return map;
  }

  QuestionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      index: Value(index),
      questionTitleKey: Value(questionTitleKey),
      questionTitle: Value(questionTitle),
      questionDescKey: Value(questionDescKey),
      questionDesc: Value(questionDesc),
    );
  }

  factory Question.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Question(
      index: serializer.fromJson<int>(json['index']),
      questionTitleKey: serializer.fromJson<String>(json['questionTitleKey']),
      questionTitle: serializer.fromJson<String>(json['questionTitle']),
      questionDescKey: serializer.fromJson<String>(json['questionDescKey']),
      questionDesc: serializer.fromJson<String>(json['questionDesc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'index': serializer.toJson<int>(index),
      'questionTitleKey': serializer.toJson<String>(questionTitleKey),
      'questionTitle': serializer.toJson<String>(questionTitle),
      'questionDescKey': serializer.toJson<String>(questionDescKey),
      'questionDesc': serializer.toJson<String>(questionDesc),
    };
  }

  Question copyWith(
          {int? index,
          String? questionTitleKey,
          String? questionTitle,
          String? questionDescKey,
          String? questionDesc}) =>
      Question(
        index: index ?? this.index,
        questionTitleKey: questionTitleKey ?? this.questionTitleKey,
        questionTitle: questionTitle ?? this.questionTitle,
        questionDescKey: questionDescKey ?? this.questionDescKey,
        questionDesc: questionDesc ?? this.questionDesc,
      );
  @override
  String toString() {
    return (StringBuffer('Question(')
          ..write('index: $index, ')
          ..write('questionTitleKey: $questionTitleKey, ')
          ..write('questionTitle: $questionTitle, ')
          ..write('questionDescKey: $questionDescKey, ')
          ..write('questionDesc: $questionDesc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      index, questionTitleKey, questionTitle, questionDescKey, questionDesc);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Question &&
          other.index == this.index &&
          other.questionTitleKey == this.questionTitleKey &&
          other.questionTitle == this.questionTitle &&
          other.questionDescKey == this.questionDescKey &&
          other.questionDesc == this.questionDesc);
}

class QuestionsCompanion extends UpdateCompanion<Question> {
  final Value<int> index;
  final Value<String> questionTitleKey;
  final Value<String> questionTitle;
  final Value<String> questionDescKey;
  final Value<String> questionDesc;
  const QuestionsCompanion({
    this.index = const Value.absent(),
    this.questionTitleKey = const Value.absent(),
    this.questionTitle = const Value.absent(),
    this.questionDescKey = const Value.absent(),
    this.questionDesc = const Value.absent(),
  });
  QuestionsCompanion.insert({
    required int index,
    required String questionTitleKey,
    required String questionTitle,
    required String questionDescKey,
    required String questionDesc,
  })  : index = Value(index),
        questionTitleKey = Value(questionTitleKey),
        questionTitle = Value(questionTitle),
        questionDescKey = Value(questionDescKey),
        questionDesc = Value(questionDesc);
  static Insertable<Question> custom({
    Expression<int>? index,
    Expression<String>? questionTitleKey,
    Expression<String>? questionTitle,
    Expression<String>? questionDescKey,
    Expression<String>? questionDesc,
  }) {
    return RawValuesInsertable({
      if (index != null) 'index': index,
      if (questionTitleKey != null) 'question_title_key': questionTitleKey,
      if (questionTitle != null) 'question_title': questionTitle,
      if (questionDescKey != null) 'question_desc_key': questionDescKey,
      if (questionDesc != null) 'question_desc': questionDesc,
    });
  }

  QuestionsCompanion copyWith(
      {Value<int>? index,
      Value<String>? questionTitleKey,
      Value<String>? questionTitle,
      Value<String>? questionDescKey,
      Value<String>? questionDesc}) {
    return QuestionsCompanion(
      index: index ?? this.index,
      questionTitleKey: questionTitleKey ?? this.questionTitleKey,
      questionTitle: questionTitle ?? this.questionTitle,
      questionDescKey: questionDescKey ?? this.questionDescKey,
      questionDesc: questionDesc ?? this.questionDesc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (index.present) {
      map['index'] = Variable<int>(index.value);
    }
    if (questionTitleKey.present) {
      map['question_title_key'] = Variable<String>(questionTitleKey.value);
    }
    if (questionTitle.present) {
      map['question_title'] = Variable<String>(questionTitle.value);
    }
    if (questionDescKey.present) {
      map['question_desc_key'] = Variable<String>(questionDescKey.value);
    }
    if (questionDesc.present) {
      map['question_desc'] = Variable<String>(questionDesc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsCompanion(')
          ..write('index: $index, ')
          ..write('questionTitleKey: $questionTitleKey, ')
          ..write('questionTitle: $questionTitle, ')
          ..write('questionDescKey: $questionDescKey, ')
          ..write('questionDesc: $questionDesc')
          ..write(')'))
        .toString();
  }
}

class $QuestionsTable extends Questions
    with TableInfo<$QuestionsTable, Question> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _indexMeta = const VerificationMeta('index');
  @override
  late final GeneratedColumn<int?> index = GeneratedColumn<int?>(
      'index', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _questionTitleKeyMeta =
      const VerificationMeta('questionTitleKey');
  @override
  late final GeneratedColumn<String?> questionTitleKey =
      GeneratedColumn<String?>('question_title_key', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _questionTitleMeta =
      const VerificationMeta('questionTitle');
  @override
  late final GeneratedColumn<String?> questionTitle = GeneratedColumn<String?>(
      'question_title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _questionDescKeyMeta =
      const VerificationMeta('questionDescKey');
  @override
  late final GeneratedColumn<String?> questionDescKey =
      GeneratedColumn<String?>('question_desc_key', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _questionDescMeta =
      const VerificationMeta('questionDesc');
  @override
  late final GeneratedColumn<String?> questionDesc = GeneratedColumn<String?>(
      'question_desc', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [index, questionTitleKey, questionTitle, questionDescKey, questionDesc];
  @override
  String get aliasedName => _alias ?? 'questions';
  @override
  String get actualTableName => 'questions';
  @override
  VerificationContext validateIntegrity(Insertable<Question> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('index')) {
      context.handle(
          _indexMeta, index.isAcceptableOrUnknown(data['index']!, _indexMeta));
    } else if (isInserting) {
      context.missing(_indexMeta);
    }
    if (data.containsKey('question_title_key')) {
      context.handle(
          _questionTitleKeyMeta,
          questionTitleKey.isAcceptableOrUnknown(
              data['question_title_key']!, _questionTitleKeyMeta));
    } else if (isInserting) {
      context.missing(_questionTitleKeyMeta);
    }
    if (data.containsKey('question_title')) {
      context.handle(
          _questionTitleMeta,
          questionTitle.isAcceptableOrUnknown(
              data['question_title']!, _questionTitleMeta));
    } else if (isInserting) {
      context.missing(_questionTitleMeta);
    }
    if (data.containsKey('question_desc_key')) {
      context.handle(
          _questionDescKeyMeta,
          questionDescKey.isAcceptableOrUnknown(
              data['question_desc_key']!, _questionDescKeyMeta));
    } else if (isInserting) {
      context.missing(_questionDescKeyMeta);
    }
    if (data.containsKey('question_desc')) {
      context.handle(
          _questionDescMeta,
          questionDesc.isAcceptableOrUnknown(
              data['question_desc']!, _questionDescMeta));
    } else if (isInserting) {
      context.missing(_questionDescMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Question map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Question.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $QuestionsTable createAlias(String alias) {
    return $QuestionsTable(attachedDatabase, alias);
  }
}

abstract class _$SurveyDatabase extends GeneratedDatabase {
  _$SurveyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SystemsTable systems = $SystemsTable(this);
  late final $AnswersTable answers = $AnswersTable(this);
  late final $QuestionsTable questions = $QuestionsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [systems, answers, questions];
}
