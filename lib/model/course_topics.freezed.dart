// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_topics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseTopics _$CourseTopicsFromJson(Map<String, dynamic> json) {
  return _CourseTopics.fromJson(json);
}

/// @nodoc
mixin _$CourseTopics {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  List<CourseTopicQuestions> get questions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseTopicsCopyWith<CourseTopics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTopicsCopyWith<$Res> {
  factory $CourseTopicsCopyWith(
          CourseTopics value, $Res Function(CourseTopics) then) =
      _$CourseTopicsCopyWithImpl<$Res, CourseTopics>;
  @useResult
  $Res call(
      {String id,
      String image,
      String video,
      String intro,
      String topic,
      List<CourseTopicQuestions> questions});
}

/// @nodoc
class _$CourseTopicsCopyWithImpl<$Res, $Val extends CourseTopics>
    implements $CourseTopicsCopyWith<$Res> {
  _$CourseTopicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? video = null,
    Object? intro = null,
    Object? topic = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<CourseTopicQuestions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseTopicsCopyWith<$Res>
    implements $CourseTopicsCopyWith<$Res> {
  factory _$$_CourseTopicsCopyWith(
          _$_CourseTopics value, $Res Function(_$_CourseTopics) then) =
      __$$_CourseTopicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String image,
      String video,
      String intro,
      String topic,
      List<CourseTopicQuestions> questions});
}

/// @nodoc
class __$$_CourseTopicsCopyWithImpl<$Res>
    extends _$CourseTopicsCopyWithImpl<$Res, _$_CourseTopics>
    implements _$$_CourseTopicsCopyWith<$Res> {
  __$$_CourseTopicsCopyWithImpl(
      _$_CourseTopics _value, $Res Function(_$_CourseTopics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? video = null,
    Object? intro = null,
    Object? topic = null,
    Object? questions = null,
  }) {
    return _then(_$_CourseTopics(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<CourseTopicQuestions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseTopics implements _CourseTopics {
  const _$_CourseTopics(
      {required this.id,
      required this.image,
      required this.video,
      required this.intro,
      required this.topic,
      final List<CourseTopicQuestions> questions = const []})
      : _questions = questions;

  factory _$_CourseTopics.fromJson(Map<String, dynamic> json) =>
      _$$_CourseTopicsFromJson(json);

  @override
  final String id;
  @override
  final String image;
  @override
  final String video;
  @override
  final String intro;
  @override
  final String topic;
  final List<CourseTopicQuestions> _questions;
  @override
  @JsonKey()
  List<CourseTopicQuestions> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'CourseTopics(id: $id, image: $image, video: $video, intro: $intro, topic: $topic, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseTopics &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, video, intro, topic,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseTopicsCopyWith<_$_CourseTopics> get copyWith =>
      __$$_CourseTopicsCopyWithImpl<_$_CourseTopics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseTopicsToJson(
      this,
    );
  }
}

abstract class _CourseTopics implements CourseTopics {
  const factory _CourseTopics(
      {required final String id,
      required final String image,
      required final String video,
      required final String intro,
      required final String topic,
      final List<CourseTopicQuestions> questions}) = _$_CourseTopics;

  factory _CourseTopics.fromJson(Map<String, dynamic> json) =
      _$_CourseTopics.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  String get video;
  @override
  String get intro;
  @override
  String get topic;
  @override
  List<CourseTopicQuestions> get questions;
  @override
  @JsonKey(ignore: true)
  _$$_CourseTopicsCopyWith<_$_CourseTopics> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseTopicQuestions _$CourseTopicQuestionsFromJson(Map<String, dynamic> json) {
  return _CourseTopicQuestions.fromJson(json);
}

/// @nodoc
mixin _$CourseTopicQuestions {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseTopicQuestionsCopyWith<CourseTopicQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTopicQuestionsCopyWith<$Res> {
  factory $CourseTopicQuestionsCopyWith(CourseTopicQuestions value,
          $Res Function(CourseTopicQuestions) then) =
      _$CourseTopicQuestionsCopyWithImpl<$Res, CourseTopicQuestions>;
  @useResult
  $Res call({String id, String image, String question, List<String> choices});
}

/// @nodoc
class _$CourseTopicQuestionsCopyWithImpl<$Res,
        $Val extends CourseTopicQuestions>
    implements $CourseTopicQuestionsCopyWith<$Res> {
  _$CourseTopicQuestionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? question = null,
    Object? choices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseTopicQuestionsCopyWith<$Res>
    implements $CourseTopicQuestionsCopyWith<$Res> {
  factory _$$_CourseTopicQuestionsCopyWith(_$_CourseTopicQuestions value,
          $Res Function(_$_CourseTopicQuestions) then) =
      __$$_CourseTopicQuestionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String image, String question, List<String> choices});
}

/// @nodoc
class __$$_CourseTopicQuestionsCopyWithImpl<$Res>
    extends _$CourseTopicQuestionsCopyWithImpl<$Res, _$_CourseTopicQuestions>
    implements _$$_CourseTopicQuestionsCopyWith<$Res> {
  __$$_CourseTopicQuestionsCopyWithImpl(_$_CourseTopicQuestions _value,
      $Res Function(_$_CourseTopicQuestions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? question = null,
    Object? choices = null,
  }) {
    return _then(_$_CourseTopicQuestions(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseTopicQuestions implements _CourseTopicQuestions {
  const _$_CourseTopicQuestions(
      {required this.id,
      required this.image,
      required this.question,
      final List<String> choices = const []})
      : _choices = choices;

  factory _$_CourseTopicQuestions.fromJson(Map<String, dynamic> json) =>
      _$$_CourseTopicQuestionsFromJson(json);

  @override
  final String id;
  @override
  final String image;
  @override
  final String question;
  final List<String> _choices;
  @override
  @JsonKey()
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'CourseTopicQuestions(id: $id, image: $image, question: $question, choices: $choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseTopicQuestions &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, question,
      const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseTopicQuestionsCopyWith<_$_CourseTopicQuestions> get copyWith =>
      __$$_CourseTopicQuestionsCopyWithImpl<_$_CourseTopicQuestions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseTopicQuestionsToJson(
      this,
    );
  }
}

abstract class _CourseTopicQuestions implements CourseTopicQuestions {
  const factory _CourseTopicQuestions(
      {required final String id,
      required final String image,
      required final String question,
      final List<String> choices}) = _$_CourseTopicQuestions;

  factory _CourseTopicQuestions.fromJson(Map<String, dynamic> json) =
      _$_CourseTopicQuestions.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  String get question;
  @override
  List<String> get choices;
  @override
  @JsonKey(ignore: true)
  _$$_CourseTopicQuestionsCopyWith<_$_CourseTopicQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}
