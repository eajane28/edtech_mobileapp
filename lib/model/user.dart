import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    final String? id,
    required String name,
    required String email,
    @Default([]) List<String> purchaseCourses,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class UserProgress with _$UserProgress {
  const factory UserProgress({
    required String? topicId,
    @Default(0) int answered,
  }) = _UserProgress;

  factory UserProgress.fromJson(Map<String, dynamic> json) => _$UserProgressFromJson(json);
}