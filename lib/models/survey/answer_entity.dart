import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_entity.freezed.dart';
part 'answer_entity.g.dart';

@freezed
class AnswerEntity with _$AnswerEntity {
  factory AnswerEntity({
    required int index,
    required String key,
    @Default([]) List<dynamic> valueUnit,
    required String desc,
    required String imgUrl,
    required int target,
  }) = _AnswerEntity;

  factory AnswerEntity.fromJson(Map<String, dynamic> json) => _$AnswerEntityFromJson(json);
}