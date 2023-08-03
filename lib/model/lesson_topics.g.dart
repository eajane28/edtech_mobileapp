// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Topics _$$_TopicsFromJson(Map<String, dynamic> json) => _$_Topics(
      image: json['image'] as String,
      intro: json['intro'] as String,
      topic: json['topic'] as String,
      video: json['video'] as String?,
      id: json['id'] as String,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Questions.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TopicsToJson(_$_Topics instance) => <String, dynamic>{
      'image': instance.image,
      'intro': instance.intro,
      'topic': instance.topic,
      'video': instance.video,
      'id': instance.id,
      'questions': instance.questions,
    };
