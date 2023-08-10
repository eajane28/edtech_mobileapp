// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String> get purchaseCourses => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String email,
      List<String> purchaseCourses,
      String profileImageUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? email = null,
    Object? purchaseCourses = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseCourses: null == purchaseCourses
          ? _value.purchaseCourses
          : purchaseCourses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String email,
      List<String> purchaseCourses,
      String profileImageUrl});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? email = null,
    Object? purchaseCourses = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseCourses: null == purchaseCourses
          ? _value._purchaseCourses
          : purchaseCourses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      required this.name,
      required this.email,
      final List<String> purchaseCourses = const [],
      this.profileImageUrl = ''})
      : _purchaseCourses = purchaseCourses;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String email;
  final List<String> _purchaseCourses;
  @override
  @JsonKey()
  List<String> get purchaseCourses {
    if (_purchaseCourses is EqualUnmodifiableListView) return _purchaseCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseCourses);
  }

  @override
  @JsonKey()
  final String profileImageUrl;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, purchaseCourses: $purchaseCourses, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._purchaseCourses, _purchaseCourses) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email,
      const DeepCollectionEquality().hash(_purchaseCourses), profileImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? id,
      required final String name,
      required final String email,
      final List<String> purchaseCourses,
      final String profileImageUrl}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get email;
  @override
  List<String> get purchaseCourses;
  @override
  String get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserProgress _$UserProgressFromJson(Map<String, dynamic> json) {
  return _UserProgress.fromJson(json);
}

/// @nodoc
mixin _$UserProgress {
  String? get topicId => throw _privateConstructorUsedError;
  int get answered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProgressCopyWith<UserProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProgressCopyWith<$Res> {
  factory $UserProgressCopyWith(
          UserProgress value, $Res Function(UserProgress) then) =
      _$UserProgressCopyWithImpl<$Res, UserProgress>;
  @useResult
  $Res call({String? topicId, int answered});
}

/// @nodoc
class _$UserProgressCopyWithImpl<$Res, $Val extends UserProgress>
    implements $UserProgressCopyWith<$Res> {
  _$UserProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = freezed,
    Object? answered = null,
  }) {
    return _then(_value.copyWith(
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      answered: null == answered
          ? _value.answered
          : answered // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProgressCopyWith<$Res>
    implements $UserProgressCopyWith<$Res> {
  factory _$$_UserProgressCopyWith(
          _$_UserProgress value, $Res Function(_$_UserProgress) then) =
      __$$_UserProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? topicId, int answered});
}

/// @nodoc
class __$$_UserProgressCopyWithImpl<$Res>
    extends _$UserProgressCopyWithImpl<$Res, _$_UserProgress>
    implements _$$_UserProgressCopyWith<$Res> {
  __$$_UserProgressCopyWithImpl(
      _$_UserProgress _value, $Res Function(_$_UserProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = freezed,
    Object? answered = null,
  }) {
    return _then(_$_UserProgress(
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      answered: null == answered
          ? _value.answered
          : answered // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProgress implements _UserProgress {
  const _$_UserProgress({required this.topicId, this.answered = 0});

  factory _$_UserProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UserProgressFromJson(json);

  @override
  final String? topicId;
  @override
  @JsonKey()
  final int answered;

  @override
  String toString() {
    return 'UserProgress(topicId: $topicId, answered: $answered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProgress &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.answered, answered) ||
                other.answered == answered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topicId, answered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProgressCopyWith<_$_UserProgress> get copyWith =>
      __$$_UserProgressCopyWithImpl<_$_UserProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProgressToJson(
      this,
    );
  }
}

abstract class _UserProgress implements UserProgress {
  const factory _UserProgress(
      {required final String? topicId, final int answered}) = _$_UserProgress;

  factory _UserProgress.fromJson(Map<String, dynamic> json) =
      _$_UserProgress.fromJson;

  @override
  String? get topicId;
  @override
  int get answered;
  @override
  @JsonKey(ignore: true)
  _$$_UserProgressCopyWith<_$_UserProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
