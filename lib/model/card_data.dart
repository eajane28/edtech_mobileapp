import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_data.freezed.dart';

part 'card_data.g.dart';

@freezed
class CardData with _$CardData {
  const factory CardData({
    required String title,
    required String subtitle,
    required String about,
    required String duration,
    required String category,
    required String image,
    required double price,
    required String id,
  }) = _CardData;

  factory CardData.fromJson(Map<String, dynamic> json) =>
      _$CardDataFromJson(json);
}
