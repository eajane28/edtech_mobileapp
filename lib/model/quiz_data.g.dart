// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Questions _$$_QuestionsFromJson(Map<String, dynamic> json) => _$_Questions(
      image: json['image'] as String?,
      answer: json['answer'] as String?,
      question: json['question'] as String?,
      id: json['id'] as String?,
      choices: (json['choices'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_QuestionsToJson(_$_Questions instance) =>
    <String, dynamic>{
      'image': instance.image,
      'answer': instance.answer,
      'question': instance.question,
      'id': instance.id,
      'choices': instance.choices,
    };
