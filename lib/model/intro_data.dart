import 'package:freezed_annotation/freezed_annotation.dart';

part 'intro_data.freezed.dart';

part 'intro_data.g.dart';

@freezed
class IntroData with _$IntroData {
  const factory IntroData({
    required String imagePage,
    required String title,
    required String message,
  }) = _IntroData;

  factory IntroData.fromJson(Map<String, dynamic> json) => _$IntroDataFromJson(json);
}
