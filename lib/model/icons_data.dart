import 'package:freezed_annotation/freezed_annotation.dart';

part 'icons_data.freezed.dart';

part 'icons_data.g.dart';

@freezed
class IconsData with _$IconsData {
  const factory IconsData({
    required String iconsPage,
  }) = _IconsData;

  factory IconsData.fromJson(Map<String, dynamic> json) =>
      _$IconsDataFromJson(json);
}
