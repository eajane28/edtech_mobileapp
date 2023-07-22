import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_data.freezed.dart';

part 'settings_data.g.dart';

@freezed
class SettingsData with _$SettingsData {
  const factory SettingsData({
    required String iconPath,
    required String title,
    required String text,
  }) = _SettingsData;

  factory SettingsData.fromJson(Map<String, dynamic> json) =>
      _$SettingsDataFromJson(json);
}
