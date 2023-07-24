// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizData _$QuizDataFromJson(Map<String, dynamic> json) {
  return _QuizData.fromJson(json);
}

/// @nodoc
mixin _$QuizData {
  String get image => throw _privateConstructorUsedError;
  String get quizNo => throw _privateConstructorUsedError;
  String get quizTitle => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizDataCopyWith<QuizData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDataCopyWith<$Res> {
  factory $QuizDataCopyWith(QuizData value, $Res Function(QuizData) then) =
      _$QuizDataCopyWithImpl<$Res, QuizData>;
  @useResult
  $Res call({String image, String quizNo, String quizTitle, String subtitle});
}

/// @nodoc
class _$QuizDataCopyWithImpl<$Res, $Val extends QuizData>
    implements $QuizDataCopyWith<$Res> {
  _$QuizDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? quizNo = null,
    Object? quizTitle = null,
    Object? subtitle = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      quizNo: null == quizNo
          ? _value.quizNo
          : quizNo // ignore: cast_nullable_to_non_nullable
              as String,
      quizTitle: null == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizDataCopyWith<$Res> implements $QuizDataCopyWith<$Res> {
  factory _$$_QuizDataCopyWith(
          _$_QuizData value, $Res Function(_$_QuizData) then) =
      __$$_QuizDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String quizNo, String quizTitle, String subtitle});
}

/// @nodoc
class __$$_QuizDataCopyWithImpl<$Res>
    extends _$QuizDataCopyWithImpl<$Res, _$_QuizData>
    implements _$$_QuizDataCopyWith<$Res> {
  __$$_QuizDataCopyWithImpl(
      _$_QuizData _value, $Res Function(_$_QuizData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? quizNo = null,
    Object? quizTitle = null,
    Object? subtitle = null,
  }) {
    return _then(_$_QuizData(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      quizNo: null == quizNo
          ? _value.quizNo
          : quizNo // ignore: cast_nullable_to_non_nullable
              as String,
      quizTitle: null == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
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
class _$_QuizData implements _QuizData {
  const _$_QuizData(
      {required this.image,
      required this.quizNo,
      required this.quizTitle,
      required this.subtitle});

  factory _$_QuizData.fromJson(Map<String, dynamic> json) =>
      _$$_QuizDataFromJson(json);

  @override
  final String image;
  @override
  final String quizNo;
  @override
  final String quizTitle;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'QuizData(image: $image, quizNo: $quizNo, quizTitle: $quizTitle, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizData &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.quizNo, quizNo) || other.quizNo == quizNo) &&
            (identical(other.quizTitle, quizTitle) ||
                other.quizTitle == quizTitle) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, quizNo, quizTitle, subtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizDataCopyWith<_$_QuizData> get copyWith =>
      __$$_QuizDataCopyWithImpl<_$_QuizData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizDataToJson(
      this,
    );
  }
}

abstract class _QuizData implements QuizData {
  const factory _QuizData(
      {required final String image,
      required final String quizNo,
      required final String quizTitle,
      required final String subtitle}) = _$_QuizData;

  factory _QuizData.fromJson(Map<String, dynamic> json) = _$_QuizData.fromJson;

  @override
  String get image;
  @override
  String get quizNo;
  @override
  String get quizTitle;
  @override
  String get subtitle;
  @override
  @JsonKey(ignore: true)
  _$$_QuizDataCopyWith<_$_QuizData> get copyWith =>
      throw _privateConstructorUsedError;
}
