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

Topics _$TopicsFromJson(Map<String, dynamic> json) {
  return _Topics.fromJson(json);
}

/// @nodoc
mixin _$Topics {
  String get image => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicsCopyWith<Topics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsCopyWith<$Res> {
  factory $TopicsCopyWith(Topics value, $Res Function(Topics) then) =
      _$TopicsCopyWithImpl<$Res, Topics>;
  @useResult
  $Res call(
      {String image, String intro, String topic, String? video, String id});
}

/// @nodoc
class _$TopicsCopyWithImpl<$Res, $Val extends Topics>
    implements $TopicsCopyWith<$Res> {
  _$TopicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? intro = null,
    Object? topic = null,
    Object? video = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicsCopyWith<$Res> implements $TopicsCopyWith<$Res> {
  factory _$$_TopicsCopyWith(_$_Topics value, $Res Function(_$_Topics) then) =
      __$$_TopicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image, String intro, String topic, String? video, String id});
}

/// @nodoc
class __$$_TopicsCopyWithImpl<$Res>
    extends _$TopicsCopyWithImpl<$Res, _$_Topics>
    implements _$$_TopicsCopyWith<$Res> {
  __$$_TopicsCopyWithImpl(_$_Topics _value, $Res Function(_$_Topics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? intro = null,
    Object? topic = null,
    Object? video = freezed,
    Object? id = null,
  }) {
    return _then(_$_Topics(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topics implements _Topics {
  const _$_Topics(
      {required this.image,
      required this.intro,
      required this.topic,
      this.video,
      required this.id});

  factory _$_Topics.fromJson(Map<String, dynamic> json) =>
      _$$_TopicsFromJson(json);

  @override
  final String image;
  @override
  final String intro;
  @override
  final String topic;
  @override
  final String? video;
  @override
  final String id;

  @override
  String toString() {
    return 'Topics(image: $image, intro: $intro, topic: $topic, video: $video, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Topics &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, intro, topic, video, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicsCopyWith<_$_Topics> get copyWith =>
      __$$_TopicsCopyWithImpl<_$_Topics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicsToJson(
      this,
    );
  }
}

abstract class _Topics implements Topics {
  const factory _Topics(
      {required final String image,
      required final String intro,
      required final String topic,
      final String? video,
      required final String id}) = _$_Topics;

  factory _Topics.fromJson(Map<String, dynamic> json) = _$_Topics.fromJson;

  @override
  String get image;
  @override
  String get intro;
  @override
  String get topic;
  @override
  String? get video;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TopicsCopyWith<_$_Topics> get copyWith =>
      throw _privateConstructorUsedError;
}
