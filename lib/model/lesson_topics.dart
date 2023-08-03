import 'package:edtech_mobile/model/quiz_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_topics.freezed.dart';

part 'lesson_topics.g.dart';

@freezed
class Topics with _$Topics {
  const factory Topics({
    required String image,
    required String intro,
    required String topic,
    final String? video,
    required String id,
    @Default([]) List<Questions> questions,
  }) = _Topics;

  factory Topics.fromJson(Map<String, dynamic> json) => _$TopicsFromJson(json);
}
