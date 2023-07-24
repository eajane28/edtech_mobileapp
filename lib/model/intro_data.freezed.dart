// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntroData _$IntroDataFromJson(Map<String, dynamic> json) {
  return _IntroData.fromJson(json);
}

/// @nodoc
mixin _$IntroData {
  String get imagePage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntroDataCopyWith<IntroData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroDataCopyWith<$Res> {
  factory $IntroDataCopyWith(IntroData value, $Res Function(IntroData) then) =
      _$IntroDataCopyWithImpl<$Res, IntroData>;
  @useResult
  $Res call({String imagePage, String title, String message});
}

/// @nodoc
class _$IntroDataCopyWithImpl<$Res, $Val extends IntroData>
    implements $IntroDataCopyWith<$Res> {
  _$IntroDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePage = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      imagePage: null == imagePage
          ? _value.imagePage
          : imagePage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntroDataCopyWith<$Res> implements $IntroDataCopyWith<$Res> {
  factory _$$_IntroDataCopyWith(
          _$_IntroData value, $Res Function(_$_IntroData) then) =
      __$$_IntroDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePage, String title, String message});
}

/// @nodoc
class __$$_IntroDataCopyWithImpl<$Res>
    extends _$IntroDataCopyWithImpl<$Res, _$_IntroData>
    implements _$$_IntroDataCopyWith<$Res> {
  __$$_IntroDataCopyWithImpl(
      _$_IntroData _value, $Res Function(_$_IntroData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePage = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$_IntroData(
      imagePage: null == imagePage
          ? _value.imagePage
          : imagePage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntroData implements _IntroData {
  const _$_IntroData(
      {required this.imagePage, required this.title, required this.message});

  factory _$_IntroData.fromJson(Map<String, dynamic> json) =>
      _$$_IntroDataFromJson(json);

  @override
  final String imagePage;
  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'IntroData(imagePage: $imagePage, title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntroData &&
            (identical(other.imagePage, imagePage) ||
                other.imagePage == imagePage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePage, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntroDataCopyWith<_$_IntroData> get copyWith =>
      __$$_IntroDataCopyWithImpl<_$_IntroData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntroDataToJson(
      this,
    );
  }
}

abstract class _IntroData implements IntroData {
  const factory _IntroData(
      {required final String imagePage,
      required final String title,
      required final String message}) = _$_IntroData;

  factory _IntroData.fromJson(Map<String, dynamic> json) =
      _$_IntroData.fromJson;

  @override
  String get imagePage;
  @override
  String get title;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_IntroDataCopyWith<_$_IntroData> get copyWith =>
      throw _privateConstructorUsedError;
}
