// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardData _$CardDataFromJson(Map<String, dynamic> json) {
  return _CardData.fromJson(json);
}

/// @nodoc
mixin _$CardData {
  String get cardImage => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardDataCopyWith<CardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDataCopyWith<$Res> {
  factory $CardDataCopyWith(CardData value, $Res Function(CardData) then) =
      _$CardDataCopyWithImpl<$Res, CardData>;
  @useResult
  $Res call(
      {String cardImage,
      String price,
      String duration,
      String title,
      String description});
}

/// @nodoc
class _$CardDataCopyWithImpl<$Res, $Val extends CardData>
    implements $CardDataCopyWith<$Res> {
  _$CardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardImage = null,
    Object? price = null,
    Object? duration = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      cardImage: null == cardImage
          ? _value.cardImage
          : cardImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardDataCopyWith<$Res> implements $CardDataCopyWith<$Res> {
  factory _$$_CardDataCopyWith(
          _$_CardData value, $Res Function(_$_CardData) then) =
      __$$_CardDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardImage,
      String price,
      String duration,
      String title,
      String description});
}

/// @nodoc
class __$$_CardDataCopyWithImpl<$Res>
    extends _$CardDataCopyWithImpl<$Res, _$_CardData>
    implements _$$_CardDataCopyWith<$Res> {
  __$$_CardDataCopyWithImpl(
      _$_CardData _value, $Res Function(_$_CardData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardImage = null,
    Object? price = null,
    Object? duration = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_CardData(
      cardImage: null == cardImage
          ? _value.cardImage
          : cardImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardData implements _CardData {
  const _$_CardData(
      {required this.cardImage,
      required this.price,
      required this.duration,
      required this.title,
      required this.description});

  factory _$_CardData.fromJson(Map<String, dynamic> json) =>
      _$$_CardDataFromJson(json);

  @override
  final String cardImage;
  @override
  final String price;
  @override
  final String duration;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'CardData(cardImage: $cardImage, price: $price, duration: $duration, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardData &&
            (identical(other.cardImage, cardImage) ||
                other.cardImage == cardImage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cardImage, price, duration, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardDataCopyWith<_$_CardData> get copyWith =>
      __$$_CardDataCopyWithImpl<_$_CardData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardDataToJson(
      this,
    );
  }
}

abstract class _CardData implements CardData {
  const factory _CardData(
      {required final String cardImage,
      required final String price,
      required final String duration,
      required final String title,
      required final String description}) = _$_CardData;

  factory _CardData.fromJson(Map<String, dynamic> json) = _$_CardData.fromJson;

  @override
  String get cardImage;
  @override
  String get price;
  @override
  String get duration;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_CardDataCopyWith<_$_CardData> get copyWith =>
      throw _privateConstructorUsedError;
}
