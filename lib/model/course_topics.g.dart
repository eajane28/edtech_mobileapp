// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseTopics _$$_CourseTopicsFromJson(Map<String, dynamic> json) =>
    _$_CourseTopics(
      id: json['id'] as String,
      image: json['image'] as String,
      video: json['video'] as String,
      intro: json['intro'] as String,
      topic: json['topic'] as String,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) =>
                  CourseTopicQuestions.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CourseTopicsToJson(_$_CourseTopics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'video': instance.video,
      'intro': instance.intro,
      'topic': instance.topic,
      'questions': instance.questions,
    };

_$_CourseTopicQuestions _$$_CourseTopicQuestionsFromJson(
        Map<String, dynamic> json) =>
    _$_CourseTopicQuestions(
      id: json['id'] as String?,
      image: json['image'] as String?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      choices: (json['choices'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CourseTopicQuestionsToJson(
        _$_CourseTopicQuestions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'question': instance.question,
      'answer': instance.answer,
      'choices': instance.choices,
    };
