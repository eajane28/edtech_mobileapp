// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentData _$$_PaymentDataFromJson(Map<String, dynamic> json) =>
    _$_PaymentData(
      id: json['id'] as String?,
      name: json['name'] as String,
      paymentMethod: json['paymentMethod'] as String,
      cardNumber: json['cardNumber'] as String,
      expiryDate: json['expiryDate'] as String,
      cvv: json['cvv'] as String,
    );

Map<String, dynamic> _$$_PaymentDataToJson(_$_PaymentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'paymentMethod': instance.paymentMethod,
      'cardNumber': instance.cardNumber,
      'expiryDate': instance.expiryDate,
      'cvv': instance.cvv,
    };
