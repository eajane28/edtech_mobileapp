import 'package:freezed_annotation/freezed_annotation.dart';

part 'chosen_course_data.freezed.dart';

part 'chosen_course_data.g.dart';

@freezed
class ChosenCards with _$ChosenCards {
  const factory ChosenCards({
    required String toImage,
    required String title,
  }) = _ChosenCards;

  factory ChosenCards.fromJson(Map<String, dynamic> json) =>
      _$ChosenCardsFromJson(json);
}
