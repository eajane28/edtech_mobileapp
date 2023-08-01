// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      purchaseCourses: (json['purchaseCourses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'purchaseCourses': instance.purchaseCourses,
    };

_$_UserProgress _$$_UserProgressFromJson(Map<String, dynamic> json) =>
    _$_UserProgress(
      topicId: json['topicId'] as String?,
      answered: json['answered'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserProgressToJson(_$_UserProgress instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'answered': instance.answered,
    };
