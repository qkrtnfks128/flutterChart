// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerEntity _$$_AnswerEntityFromJson(Map<String, dynamic> json) =>
    _$_AnswerEntity(
      index: json['index'] as int,
      key: json['key'] as String,
      valueUnit: json['valueUnit'] as List<dynamic>? ?? const [],
      desc: json['desc'] as String,
      imgUrl: json['imgUrl'] as String,
      target: json['target'] as int,
    );

Map<String, dynamic> _$$_AnswerEntityToJson(_$_AnswerEntity instance) =>
    <String, dynamic>{
      'index': instance.index,
      'key': instance.key,
      'valueUnit': instance.valueUnit,
      'desc': instance.desc,
      'imgUrl': instance.imgUrl,
      'target': instance.target,
    };
