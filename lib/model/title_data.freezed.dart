// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'title_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TitleData _$TitleDataFromJson(Map<String, dynamic> json) {
  return _TitleData.fromJson(json);
}

/// @nodoc
mixin _$TitleData {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleDataCopyWith<TitleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleDataCopyWith<$Res> {
  factory $TitleDataCopyWith(TitleData value, $Res Function(TitleData) then) =
      _$TitleDataCopyWithImpl<$Res, TitleData>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$TitleDataCopyWithImpl<$Res, $Val extends TitleData>
    implements $TitleDataCopyWith<$Res> {
  _$TitleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TitleDataCopyWith<$Res> implements $TitleDataCopyWith<$Res> {
  factory _$$_TitleDataCopyWith(
          _$_TitleData value, $Res Function(_$_TitleData) then) =
      __$$_TitleDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_TitleDataCopyWithImpl<$Res>
    extends _$TitleDataCopyWithImpl<$Res, _$_TitleData>
    implements _$$_TitleDataCopyWith<$Res> {
  __$$_TitleDataCopyWithImpl(
      _$_TitleData _value, $Res Function(_$_TitleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_TitleData(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TitleData implements _TitleData {
  const _$_TitleData({required this.title});

  factory _$_TitleData.fromJson(Map<String, dynamic> json) =>
      _$$_TitleDataFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'TitleData(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleData &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleDataCopyWith<_$_TitleData> get copyWith =>
      __$$_TitleDataCopyWithImpl<_$_TitleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TitleDataToJson(
      this,
    );
  }
}

abstract class _TitleData implements TitleData {
  const factory _TitleData({required final String title}) = _$_TitleData;

  factory _TitleData.fromJson(Map<String, dynamic> json) =
      _$_TitleData.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_TitleDataCopyWith<_$_TitleData> get copyWith =>
      throw _privateConstructorUsedError;
}
