// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoursesData _$CoursesDataFromJson(Map<String, dynamic> json) {
  return _CoursesData.fromJson(json);
}

/// @nodoc
mixin _$CoursesData {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursesDataCopyWith<CoursesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesDataCopyWith<$Res> {
  factory $CoursesDataCopyWith(
          CoursesData value, $Res Function(CoursesData) then) =
      _$CoursesDataCopyWithImpl<$Res, CoursesData>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CoursesDataCopyWithImpl<$Res, $Val extends CoursesData>
    implements $CoursesDataCopyWith<$Res> {
  _$CoursesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoursesDataCopyWith<$Res>
    implements $CoursesDataCopyWith<$Res> {
  factory _$$_CoursesDataCopyWith(
          _$_CoursesData value, $Res Function(_$_CoursesData) then) =
      __$$_CoursesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CoursesDataCopyWithImpl<$Res>
    extends _$CoursesDataCopyWithImpl<$Res, _$_CoursesData>
    implements _$$_CoursesDataCopyWith<$Res> {
  __$$_CoursesDataCopyWithImpl(
      _$_CoursesData _value, $Res Function(_$_CoursesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CoursesData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoursesData implements _CoursesData {
  const _$_CoursesData({required this.name});

  factory _$_CoursesData.fromJson(Map<String, dynamic> json) =>
      _$$_CoursesDataFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CoursesData(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoursesData &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursesDataCopyWith<_$_CoursesData> get copyWith =>
      __$$_CoursesDataCopyWithImpl<_$_CoursesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursesDataToJson(
      this,
    );
  }
}

abstract class _CoursesData implements CoursesData {
  const factory _CoursesData({required final String name}) = _$_CoursesData;

  factory _CoursesData.fromJson(Map<String, dynamic> json) =
      _$_CoursesData.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CoursesDataCopyWith<_$_CoursesData> get copyWith =>
      throw _privateConstructorUsedError;
}
