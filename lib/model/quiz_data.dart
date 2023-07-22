import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_data.freezed.dart';

part 'quiz_data.g.dart';

@freezed
class QuizData with _$QuizData {
  const factory QuizData({
    required String image,
    required String quizNo,
    required String quizTitle,
    required String subtitle,
  }) = _QuizData;

  factory QuizData.fromJson(Map<String, dynamic> json) => _$QuizDataFromJson(json);
}
