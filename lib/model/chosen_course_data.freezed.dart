// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chosen_course_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChosenCards _$ChosenCardsFromJson(Map<String, dynamic> json) {
  return _ChosenCards.fromJson(json);
}

/// @nodoc
mixin _$ChosenCards {
  String get toImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChosenCardsCopyWith<ChosenCards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChosenCardsCopyWith<$Res> {
  factory $ChosenCardsCopyWith(
          ChosenCards value, $Res Function(ChosenCards) then) =
      _$ChosenCardsCopyWithImpl<$Res, ChosenCards>;
  @useResult
  $Res call({String toImage, String title});
}

/// @nodoc
class _$ChosenCardsCopyWithImpl<$Res, $Val extends ChosenCards>
    implements $ChosenCardsCopyWith<$Res> {
  _$ChosenCardsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toImage = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      toImage: null == toImage
          ? _value.toImage
          : toImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChosenCardsCopyWith<$Res>
    implements $ChosenCardsCopyWith<$Res> {
  factory _$$_ChosenCardsCopyWith(
          _$_ChosenCards value, $Res Function(_$_ChosenCards) then) =
      __$$_ChosenCardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String toImage, String title});
}

/// @nodoc
class __$$_ChosenCardsCopyWithImpl<$Res>
    extends _$ChosenCardsCopyWithImpl<$Res, _$_ChosenCards>
    implements _$$_ChosenCardsCopyWith<$Res> {
  __$$_ChosenCardsCopyWithImpl(
      _$_ChosenCards _value, $Res Function(_$_ChosenCards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toImage = null,
    Object? title = null,
  }) {
    return _then(_$_ChosenCards(
      toImage: null == toImage
          ? _value.toImage
          : toImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChosenCards implements _ChosenCards {
  const _$_ChosenCards({required this.toImage, required this.title});

  factory _$_ChosenCards.fromJson(Map<String, dynamic> json) =>
      _$$_ChosenCardsFromJson(json);

  @override
  final String toImage;
  @override
  final String title;

  @override
  String toString() {
    return 'ChosenCards(toImage: $toImage, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChosenCards &&
            (identical(other.toImage, toImage) || other.toImage == toImage) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toImage, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChosenCardsCopyWith<_$_ChosenCards> get copyWith =>
      __$$_ChosenCardsCopyWithImpl<_$_ChosenCards>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChosenCardsToJson(
      this,
    );
  }
}

abstract class _ChosenCards implements ChosenCards {
  const factory _ChosenCards(
      {required final String toImage,
      required final String title}) = _$_ChosenCards;

  factory _ChosenCards.fromJson(Map<String, dynamic> json) =
      _$_ChosenCards.fromJson;

  @override
  String get toImage;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_ChosenCardsCopyWith<_$_ChosenCards> get copyWith =>
      throw _privateConstructorUsedError;
}
