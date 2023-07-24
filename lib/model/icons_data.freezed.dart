// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icons_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IconsData _$IconsDataFromJson(Map<String, dynamic> json) {
  return _IconsData.fromJson(json);
}

/// @nodoc
mixin _$IconsData {
  String get iconsPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconsDataCopyWith<IconsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconsDataCopyWith<$Res> {
  factory $IconsDataCopyWith(IconsData value, $Res Function(IconsData) then) =
      _$IconsDataCopyWithImpl<$Res, IconsData>;
  @useResult
  $Res call({String iconsPage});
}

/// @nodoc
class _$IconsDataCopyWithImpl<$Res, $Val extends IconsData>
    implements $IconsDataCopyWith<$Res> {
  _$IconsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconsPage = null,
  }) {
    return _then(_value.copyWith(
      iconsPage: null == iconsPage
          ? _value.iconsPage
          : iconsPage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IconsDataCopyWith<$Res> implements $IconsDataCopyWith<$Res> {
  factory _$$_IconsDataCopyWith(
          _$_IconsData value, $Res Function(_$_IconsData) then) =
      __$$_IconsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iconsPage});
}

/// @nodoc
class __$$_IconsDataCopyWithImpl<$Res>
    extends _$IconsDataCopyWithImpl<$Res, _$_IconsData>
    implements _$$_IconsDataCopyWith<$Res> {
  __$$_IconsDataCopyWithImpl(
      _$_IconsData _value, $Res Function(_$_IconsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconsPage = null,
  }) {
    return _then(_$_IconsData(
      iconsPage: null == iconsPage
          ? _value.iconsPage
          : iconsPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IconsData implements _IconsData {
  const _$_IconsData({required this.iconsPage});

  factory _$_IconsData.fromJson(Map<String, dynamic> json) =>
      _$$_IconsDataFromJson(json);

  @override
  final String iconsPage;

  @override
  String toString() {
    return 'IconsData(iconsPage: $iconsPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IconsData &&
            (identical(other.iconsPage, iconsPage) ||
                other.iconsPage == iconsPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iconsPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IconsDataCopyWith<_$_IconsData> get copyWith =>
      __$$_IconsDataCopyWithImpl<_$_IconsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IconsDataToJson(
      this,
    );
  }
}

abstract class _IconsData implements IconsData {
  const factory _IconsData({required final String iconsPage}) = _$_IconsData;

  factory _IconsData.fromJson(Map<String, dynamic> json) =
      _$_IconsData.fromJson;

  @override
  String get iconsPage;
  @override
  @JsonKey(ignore: true)
  _$$_IconsDataCopyWith<_$_IconsData> get copyWith =>
      throw _privateConstructorUsedError;
}
