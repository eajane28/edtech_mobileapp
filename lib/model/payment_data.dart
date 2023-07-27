import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_data.freezed.dart';

part 'payment_data.g.dart';

@freezed
class PaymentData with _$PaymentData {
  const factory PaymentData({
    required String creditCardImage,
    required String creditCardName,
    required String creditCardNumber,
    required String creditCardExpiryDate,
    required String creditCardCVV,
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}
