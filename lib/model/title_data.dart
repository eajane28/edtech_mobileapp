import 'package:freezed_annotation/freezed_annotation.dart';

part 'title_data.freezed.dart';

part 'title_data.g.dart';

@freezed
class TitleData with _$TitleData {
  const factory TitleData({
    required String title,
  }) = _TitleData;

  factory TitleData.fromJson(Map<String, dynamic> json) =>
      _$TitleDataFromJson(json);
}
