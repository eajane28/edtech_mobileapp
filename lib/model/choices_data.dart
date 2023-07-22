
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choices_data.freezed.dart';

part 'choices_data.g.dart';

@freezed
class ChoicesData with _$ChoicesData {
  const factory ChoicesData({
    required String choices,
    required String description,
  }) = _ChoicesData;

  factory ChoicesData.fromJson(Map<String, dynamic> json) =>
      _$ChoicesDataFromJson(json);
  }
