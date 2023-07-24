// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choices_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoicesData _$ChoicesDataFromJson(Map<String, dynamic> json) {
  return _ChoicesData.fromJson(json);
}

/// @nodoc
mixin _$ChoicesData {
  String get choices => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesDataCopyWith<ChoicesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesDataCopyWith<$Res> {
  factory $ChoicesDataCopyWith(
          ChoicesData value, $Res Function(ChoicesData) then) =
      _$ChoicesDataCopyWithImpl<$Res, ChoicesData>;
  @useResult
  $Res call({String choices, String description});
}

/// @nodoc
class _$ChoicesDataCopyWithImpl<$Res, $Val extends ChoicesData>
    implements $ChoicesDataCopyWith<$Res> {
  _$ChoicesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoicesDataCopyWith<$Res>
    implements $ChoicesDataCopyWith<$Res> {
  factory _$$_ChoicesDataCopyWith(
          _$_ChoicesData value, $Res Function(_$_ChoicesData) then) =
      __$$_ChoicesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String choices, String description});
}

/// @nodoc
class __$$_ChoicesDataCopyWithImpl<$Res>
    extends _$ChoicesDataCopyWithImpl<$Res, _$_ChoicesData>
    implements _$$_ChoicesDataCopyWith<$Res> {
  __$$_ChoicesDataCopyWithImpl(
      _$_ChoicesData _value, $Res Function(_$_ChoicesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = null,
    Object? description = null,
  }) {
    return _then(_$_ChoicesData(
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
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
class _$_ChoicesData implements _ChoicesData {
  const _$_ChoicesData({required this.choices, required this.description});

  factory _$_ChoicesData.fromJson(Map<String, dynamic> json) =>
      _$$_ChoicesDataFromJson(json);

  @override
  final String choices;
  @override
  final String description;

  @override
  String toString() {
    return 'ChoicesData(choices: $choices, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoicesData &&
            (identical(other.choices, choices) || other.choices == choices) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, choices, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoicesDataCopyWith<_$_ChoicesData> get copyWith =>
      __$$_ChoicesDataCopyWithImpl<_$_ChoicesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoicesDataToJson(
      this,
    );
  }
}

abstract class _ChoicesData implements ChoicesData {
  const factory _ChoicesData(
      {required final String choices,
      required final String description}) = _$_ChoicesData;

  factory _ChoicesData.fromJson(Map<String, dynamic> json) =
      _$_ChoicesData.fromJson;

  @override
  String get choices;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicesDataCopyWith<_$_ChoicesData> get copyWith =>
      throw _privateConstructorUsedError;
}
