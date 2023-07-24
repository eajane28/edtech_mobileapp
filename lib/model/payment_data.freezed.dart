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
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;

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
  $Res call({String image, String title, String subtitle});
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
    Object? image = null,
    Object? title = null,
    Object? subtitle = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
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
  $Res call({String image, String title, String subtitle});
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
    Object? image = null,
    Object? title = null,
    Object? subtitle = null,
  }) {
    return _then(_$_PaymentData(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentData implements _PaymentData {
  const _$_PaymentData(
      {required this.image, required this.title, required this.subtitle});

  factory _$_PaymentData.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDataFromJson(json);

  @override
  final String image;
  @override
  final String title;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'PaymentData(image: $image, title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentData &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, title, subtitle);

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
      {required final String image,
      required final String title,
      required final String subtitle}) = _$_PaymentData;

  factory _PaymentData.fromJson(Map<String, dynamic> json) =
      _$_PaymentData.fromJson;

  @override
  String get image;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDataCopyWith<_$_PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}
