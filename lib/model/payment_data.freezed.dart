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
  String get creditCardImage => throw _privateConstructorUsedError;
  String get creditCardName => throw _privateConstructorUsedError;
  String get creditCardNumber => throw _privateConstructorUsedError;
  String get creditCardExpiryDate => throw _privateConstructorUsedError;
  String get creditCardCVV => throw _privateConstructorUsedError;

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
      {String creditCardImage,
      String creditCardName,
      String creditCardNumber,
      String creditCardExpiryDate,
      String creditCardCVV});
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
    Object? creditCardImage = null,
    Object? creditCardName = null,
    Object? creditCardNumber = null,
    Object? creditCardExpiryDate = null,
    Object? creditCardCVV = null,
  }) {
    return _then(_value.copyWith(
      creditCardImage: null == creditCardImage
          ? _value.creditCardImage
          : creditCardImage // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardName: null == creditCardName
          ? _value.creditCardName
          : creditCardName // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardNumber: null == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardExpiryDate: null == creditCardExpiryDate
          ? _value.creditCardExpiryDate
          : creditCardExpiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardCVV: null == creditCardCVV
          ? _value.creditCardCVV
          : creditCardCVV // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String creditCardImage,
      String creditCardName,
      String creditCardNumber,
      String creditCardExpiryDate,
      String creditCardCVV});
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
    Object? creditCardImage = null,
    Object? creditCardName = null,
    Object? creditCardNumber = null,
    Object? creditCardExpiryDate = null,
    Object? creditCardCVV = null,
  }) {
    return _then(_$_PaymentData(
      creditCardImage: null == creditCardImage
          ? _value.creditCardImage
          : creditCardImage // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardName: null == creditCardName
          ? _value.creditCardName
          : creditCardName // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardNumber: null == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardExpiryDate: null == creditCardExpiryDate
          ? _value.creditCardExpiryDate
          : creditCardExpiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardCVV: null == creditCardCVV
          ? _value.creditCardCVV
          : creditCardCVV // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentData implements _PaymentData {
  const _$_PaymentData(
      {required this.creditCardImage,
      required this.creditCardName,
      required this.creditCardNumber,
      required this.creditCardExpiryDate,
      required this.creditCardCVV});

  factory _$_PaymentData.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDataFromJson(json);

  @override
  final String creditCardImage;
  @override
  final String creditCardName;
  @override
  final String creditCardNumber;
  @override
  final String creditCardExpiryDate;
  @override
  final String creditCardCVV;

  @override
  String toString() {
    return 'PaymentData(creditCardImage: $creditCardImage, creditCardName: $creditCardName, creditCardNumber: $creditCardNumber, creditCardExpiryDate: $creditCardExpiryDate, creditCardCVV: $creditCardCVV)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentData &&
            (identical(other.creditCardImage, creditCardImage) ||
                other.creditCardImage == creditCardImage) &&
            (identical(other.creditCardName, creditCardName) ||
                other.creditCardName == creditCardName) &&
            (identical(other.creditCardNumber, creditCardNumber) ||
                other.creditCardNumber == creditCardNumber) &&
            (identical(other.creditCardExpiryDate, creditCardExpiryDate) ||
                other.creditCardExpiryDate == creditCardExpiryDate) &&
            (identical(other.creditCardCVV, creditCardCVV) ||
                other.creditCardCVV == creditCardCVV));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, creditCardImage, creditCardName,
      creditCardNumber, creditCardExpiryDate, creditCardCVV);

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
      {required final String creditCardImage,
      required final String creditCardName,
      required final String creditCardNumber,
      required final String creditCardExpiryDate,
      required final String creditCardCVV}) = _$_PaymentData;

  factory _PaymentData.fromJson(Map<String, dynamic> json) =
      _$_PaymentData.fromJson;

  @override
  String get creditCardImage;
  @override
  String get creditCardName;
  @override
  String get creditCardNumber;
  @override
  String get creditCardExpiryDate;
  @override
  String get creditCardCVV;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDataCopyWith<_$_PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}
