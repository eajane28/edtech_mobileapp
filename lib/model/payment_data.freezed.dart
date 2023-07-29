// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) {
  return _PaymentData.fromJson(json);
}

/// @nodoc
mixin _$PaymentData {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get expiryDate => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDataCopyWith<PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDataCopyWith<$Res> {
  factory $PaymentDataCopyWith(
          PaymentData value, $Res Function(PaymentData) then) =
      _$PaymentDataCopyWithImpl<$Res, PaymentData>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String paymentMethod,
      String cardNumber,
      String expiryDate,
      String cvv,
      @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$PaymentDataCopyWithImpl<$Res, $Val extends PaymentData>
    implements $PaymentDataCopyWith<$Res> {
  _$PaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? paymentMethod = null,
    Object? cardNumber = null,
    Object? expiryDate = null,
    Object? cvv = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDataCopyWith<$Res>
    implements $PaymentDataCopyWith<$Res> {
  factory _$$_PaymentDataCopyWith(
          _$_PaymentData value, $Res Function(_$_PaymentData) then) =
      __$$_PaymentDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String paymentMethod,
      String cardNumber,
      String expiryDate,
      String cvv,
      @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$$_PaymentDataCopyWithImpl<$Res>
    extends _$PaymentDataCopyWithImpl<$Res, _$_PaymentData>
    implements _$$_PaymentDataCopyWith<$Res> {
  __$$_PaymentDataCopyWithImpl(
      _$_PaymentData _value, $Res Function(_$_PaymentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? paymentMethod = null,
    Object? cardNumber = null,
    Object? expiryDate = null,
    Object? cvv = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$_PaymentData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentData implements _PaymentData {
  const _$_PaymentData(
      {this.id,
      required this.name,
      required this.paymentMethod,
      required this.cardNumber,
      required this.expiryDate,
      required this.cvv,
      @TimestampConverter() this.createdAt});

  factory _$_PaymentData.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDataFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String paymentMethod;
  @override
  final String cardNumber;
  @override
  final String expiryDate;
  @override
  final String cvv;
  @override
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'PaymentData(id: $id, name: $name, paymentMethod: $paymentMethod, cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, paymentMethod,
      cardNumber, expiryDate, cvv, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDataCopyWith<_$_PaymentData> get copyWith =>
      __$$_PaymentDataCopyWithImpl<_$_PaymentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDataToJson(
      this,
    );
  }
}

abstract class _PaymentData implements PaymentData {
  const factory _PaymentData(
      {final String? id,
      required final String name,
      required final String paymentMethod,
      required final String cardNumber,
      required final String expiryDate,
      required final String cvv,
      @TimestampConverter() final DateTime? createdAt}) = _$_PaymentData;

  factory _PaymentData.fromJson(Map<String, dynamic> json) =
      _$_PaymentData.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get paymentMethod;
  @override
  String get cardNumber;
  @override
  String get expiryDate;
  @override
  String get cvv;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDataCopyWith<_$_PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}
