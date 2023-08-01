import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_data.freezed.dart';

part 'card_data.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String title,
    required String subtitle,
    required String about,
    required String duration,
    required String category,
    required String image,
    required double price,
    final String? video,
    required String id,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
