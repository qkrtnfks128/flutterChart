// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionEntity _$$_QuestionEntityFromJson(Map<String, dynamic> json) =>
    _$_QuestionEntity(
      index: json['index'] as int,
      titleKey: json['titleKey'] as String,
      title: json['title'] as String,
      descKey: json['descKey'] as String,
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$$_QuestionEntityToJson(_$_QuestionEntity instance) =>
    <String, dynamic>{
      'index': instance.index,
      'titleKey': instance.titleKey,
      'title': instance.title,
      'descKey': instance.descKey,
      'desc': instance.desc,
    };
