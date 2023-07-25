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
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

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
      {String title,
      String subtitle,
      String about,
      String duration,
      String category,
      String image,
      double price,
      String id});
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
    Object? title = null,
    Object? subtitle = null,
    Object? about = null,
    Object? duration = null,
    Object? category = null,
    Object? image = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      {String title,
      String subtitle,
      String about,
      String duration,
      String category,
      String image,
      double price,
      String id});
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
    Object? title = null,
    Object? subtitle = null,
    Object? about = null,
    Object? duration = null,
    Object? category = null,
    Object? image = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_$_CardData(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardData implements _CardData {
  const _$_CardData(
      {required this.title,
      required this.subtitle,
      required this.about,
      required this.duration,
      required this.category,
      required this.image,
      required this.price,
      required this.id});

  factory _$_CardData.fromJson(Map<String, dynamic> json) =>
      _$$_CardDataFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String about;
  @override
  final String duration;
  @override
  final String category;
  @override
  final String image;
  @override
  final double price;
  @override
  final String id;

  @override
  String toString() {
    return 'CardData(title: $title, subtitle: $subtitle, about: $about, duration: $duration, category: $category, image: $image, price: $price, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, about, duration,
      category, image, price, id);

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
      {required final String title,
      required final String subtitle,
      required final String about,
      required final String duration,
      required final String category,
      required final String image,
      required final double price,
      required final String id}) = _$_CardData;

  factory _CardData.fromJson(Map<String, dynamic> json) = _$_CardData.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get about;
  @override
  String get duration;
  @override
  String get category;
  @override
  String get image;
  @override
  double get price;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CardDataCopyWith<_$_CardData> get copyWith =>
      throw _privateConstructorUsedError;
}
