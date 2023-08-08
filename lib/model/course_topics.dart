import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_topics.freezed.dart';
part 'course_topics.g.dart';

@freezed
class CourseTopics with _$CourseTopics{
  const factory CourseTopics({
    required final String? id,
    required final String? image,
    required final String? video,
    required final String? intro,
    required final String? topic,
    @Default([]) List<CourseTopicQuestions> questions,
}) = _CourseTopics;

  factory CourseTopics.fromJson(Map<String, Object?> json) => _$CourseTopicsFromJson(json);
}

@freezed
class CourseTopicQuestions with _$CourseTopicQuestions{
  const factory CourseTopicQuestions({
    required final String? id,
    required final String? image,
    required final String? question,
    required final String? answer,
    @Default([]) List<String> choices,
  }) = _CourseTopicQuestions;

  factory CourseTopicQuestions.fromJson(Map<String, Object?> json) => _$CourseTopicQuestionsFromJson(json);
}