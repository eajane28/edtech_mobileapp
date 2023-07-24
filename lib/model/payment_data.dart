import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_data.freezed.dart';

part 'payment_data.g.dart';

@freezed
class PaymentData with _$PaymentData {
  const factory PaymentData({
    required String image,
    required String title,
    required String subtitle,
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}
