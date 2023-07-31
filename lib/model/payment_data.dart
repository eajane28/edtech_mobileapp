import 'package:cloud_firestore/cloud_firestore.dart';
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
    @TimestampConverter()  DateTime? createdAt
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}

/*
* Converts DataTime to Timestamp when serialized
* and converts top DateTime when deserialized
* */
class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}