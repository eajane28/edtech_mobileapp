// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsData _$SettingsDataFromJson(Map<String, dynamic> json) {
  return _SettingsData.fromJson(json);
}

/// @nodoc
mixin _$SettingsData {
  String get iconPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsDataCopyWith<SettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDataCopyWith<$Res> {
  factory $SettingsDataCopyWith(
          SettingsData value, $Res Function(SettingsData) then) =
      _$SettingsDataCopyWithImpl<$Res, SettingsData>;
  @useResult
  $Res call({String iconPath, String title, String text});
}

/// @nodoc
class _$SettingsDataCopyWithImpl<$Res, $Val extends SettingsData>
    implements $SettingsDataCopyWith<$Res> {
  _$SettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconPath = null,
    Object? title = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsDataCopyWith<$Res>
    implements $SettingsDataCopyWith<$Res> {
  factory _$$_SettingsDataCopyWith(
          _$_SettingsData value, $Res Function(_$_SettingsData) then) =
      __$$_SettingsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iconPath, String title, String text});
}

/// @nodoc
class __$$_SettingsDataCopyWithImpl<$Res>
    extends _$SettingsDataCopyWithImpl<$Res, _$_SettingsData>
    implements _$$_SettingsDataCopyWith<$Res> {
  __$$_SettingsDataCopyWithImpl(
      _$_SettingsData _value, $Res Function(_$_SettingsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconPath = null,
    Object? title = null,
    Object? text = null,
  }) {
    return _then(_$_SettingsData(
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsData implements _SettingsData {
  const _$_SettingsData(
      {required this.iconPath, required this.title, required this.text});

  factory _$_SettingsData.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsDataFromJson(json);

  @override
  final String iconPath;
  @override
  final String title;
  @override
  final String text;

  @override
  String toString() {
    return 'SettingsData(iconPath: $iconPath, title: $title, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsData &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iconPath, title, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsDataCopyWith<_$_SettingsData> get copyWith =>
      __$$_SettingsDataCopyWithImpl<_$_SettingsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsDataToJson(
      this,
    );
  }
}

abstract class _SettingsData implements SettingsData {
  const factory _SettingsData(
      {required final String iconPath,
      required final String title,
      required final String text}) = _$_SettingsData;

  factory _SettingsData.fromJson(Map<String, dynamic> json) =
      _$_SettingsData.fromJson;

  @override
  String get iconPath;
  @override
  String get title;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsDataCopyWith<_$_SettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}
