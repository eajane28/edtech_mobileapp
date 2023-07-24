import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_data.freezed.dart';

part 'card_data.g.dart';

@freezed
class CardData with _$CardData {
  const factory CardData({
    required String cardImage,
    required String price,
    required String duration,
    required String title,
    required String description,
  }) = _CardData;

  factory CardData.fromJson(Map<String, dynamic> json) =>
      _$CardDataFromJson(json);
}
