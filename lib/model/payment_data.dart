import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_data.freezed.dart';

part 'payment_data.g.dart';

@freezed
class PaymentData with _$PaymentData {
  const factory PaymentData({
    final String? id,
    required String name,
    required String paymentMethod,
    required String cardNumber,
    required String expiryDate,
    required String cvv,
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}
