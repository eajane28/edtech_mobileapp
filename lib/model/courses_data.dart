import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_data.freezed.dart';

part 'courses_data.g.dart';

@freezed
class CoursesData with _$CoursesData {
  const factory CoursesData({
    required String name,
  }) = _CoursesData;

  factory CoursesData.fromJson(Map<String, dynamic> json) =>
      _$CoursesDataFromJson(json);
}
