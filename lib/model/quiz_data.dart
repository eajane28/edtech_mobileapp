import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_data.freezed.dart';

part 'quiz_data.g.dart';

@freezed
class Questions with _$Questions {
  const factory Questions({
    required final String? image,
    required final String? answer,
    required final String? question,
    required final String? id,
    @Default([]) List<String> choices,
  }) = _Questions;

  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);
}
