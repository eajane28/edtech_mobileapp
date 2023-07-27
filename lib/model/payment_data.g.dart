// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentData _$$_PaymentDataFromJson(Map<String, dynamic> json) =>
    _$_PaymentData(
      creditCardImage: json['creditCardImage'] as String,
      creditCardName: json['creditCardName'] as String,
      creditCardNumber: json['creditCardNumber'] as String,
      creditCardExpiryDate: json['creditCardExpiryDate'] as String,
      creditCardCVV: json['creditCardCVV'] as String,
    );

Map<String, dynamic> _$$_PaymentDataToJson(_$_PaymentData instance) =>
    <String, dynamic>{
      'creditCardImage': instance.creditCardImage,
      'creditCardName': instance.creditCardName,
      'creditCardNumber': instance.creditCardNumber,
      'creditCardExpiryDate': instance.creditCardExpiryDate,
      'creditCardCVV': instance.creditCardCVV,
    };
