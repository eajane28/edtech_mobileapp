import 'package:freezed_annotation/freezed_annotation.dart';

part 'chosen_course_data.freezed.dart';

part 'chosen_course_data.g.dart';

@freezed
class Topics with _$Topics {
  const factory Topics({
    required String image,
    required String intro,
    required String topic,
    final String? video,
    required String id,
  }) = _Topics;

  factory Topics.fromJson(Map<String, dynamic> json) => _$TopicsFromJson(json);
}
