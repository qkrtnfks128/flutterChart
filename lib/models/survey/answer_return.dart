import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_return.freezed.dart';
part 'answer_return.g.dart';

@freezed
class AnswerReturn with _$AnswerReturn {
  factory AnswerReturn({
    required String uid,
    required String questionIndex,
    required String answerIndex,
  }) = _AnswerReturn;

  factory AnswerReturn.fromJson(Map<String, dynamic> json) => _$AnswerReturnFromJson(json);
}