// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentModel {
  String get id;
  String get name;
  String get courseId;
  String get email;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<StudentModel> get copyWith =>
      _$StudentModelCopyWithImpl<StudentModel>(
          this as StudentModel, _$identity);

  /// Serializes this StudentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StudentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, courseId, email, createdAt, updatedAt);

  @override
  String toString() {
    return 'StudentModel(id: $id, name: $name, courseId: $courseId, email: $email, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
          StudentModel value, $Res Function(StudentModel) _then) =
      _$StudentModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String courseId,
      String email,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res> implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._self, this._then);

  final StudentModel _self;
  final $Res Function(StudentModel) _then;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? courseId = null,
    Object? email = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StudentModel implements StudentModel {
  const _StudentModel(
      {required this.id,
      required this.name,
      required this.courseId,
      required this.email,
      required this.createdAt,
      required this.updatedAt});
  factory _StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String courseId;
  @override
  final String email;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StudentModelCopyWith<_StudentModel> get copyWith =>
      __$StudentModelCopyWithImpl<_StudentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StudentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StudentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, courseId, email, createdAt, updatedAt);

  @override
  String toString() {
    return 'StudentModel(id: $id, name: $name, courseId: $courseId, email: $email, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$StudentModelCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$StudentModelCopyWith(
          _StudentModel value, $Res Function(_StudentModel) _then) =
      __$StudentModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String courseId,
      String email,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$StudentModelCopyWithImpl<$Res>
    implements _$StudentModelCopyWith<$Res> {
  __$StudentModelCopyWithImpl(this._self, this._then);

  final _StudentModel _self;
  final $Res Function(_StudentModel) _then;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? courseId = null,
    Object? email = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_StudentModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$CreateStudentRequest {
  String get name;
  String get courseId;
  String get email;

  /// Create a copy of CreateStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateStudentRequestCopyWith<CreateStudentRequest> get copyWith =>
      _$CreateStudentRequestCopyWithImpl<CreateStudentRequest>(
          this as CreateStudentRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateStudentRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, courseId, email);

  @override
  String toString() {
    return 'CreateStudentRequest(name: $name, courseId: $courseId, email: $email)';
  }
}

/// @nodoc
abstract mixin class $CreateStudentRequestCopyWith<$Res> {
  factory $CreateStudentRequestCopyWith(CreateStudentRequest value,
          $Res Function(CreateStudentRequest) _then) =
      _$CreateStudentRequestCopyWithImpl;
  @useResult
  $Res call({String name, String courseId, String email});
}

/// @nodoc
class _$CreateStudentRequestCopyWithImpl<$Res>
    implements $CreateStudentRequestCopyWith<$Res> {
  _$CreateStudentRequestCopyWithImpl(this._self, this._then);

  final CreateStudentRequest _self;
  final $Res Function(CreateStudentRequest) _then;

  /// Create a copy of CreateStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? courseId = null,
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CreateStudentRequest implements CreateStudentRequest {
  const _CreateStudentRequest(
      {required this.name, required this.courseId, required this.email});

  @override
  final String name;
  @override
  final String courseId;
  @override
  final String email;

  /// Create a copy of CreateStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateStudentRequestCopyWith<_CreateStudentRequest> get copyWith =>
      __$CreateStudentRequestCopyWithImpl<_CreateStudentRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStudentRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, courseId, email);

  @override
  String toString() {
    return 'CreateStudentRequest(name: $name, courseId: $courseId, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$CreateStudentRequestCopyWith<$Res>
    implements $CreateStudentRequestCopyWith<$Res> {
  factory _$CreateStudentRequestCopyWith(_CreateStudentRequest value,
          $Res Function(_CreateStudentRequest) _then) =
      __$CreateStudentRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String courseId, String email});
}

/// @nodoc
class __$CreateStudentRequestCopyWithImpl<$Res>
    implements _$CreateStudentRequestCopyWith<$Res> {
  __$CreateStudentRequestCopyWithImpl(this._self, this._then);

  final _CreateStudentRequest _self;
  final $Res Function(_CreateStudentRequest) _then;

  /// Create a copy of CreateStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? courseId = null,
    Object? email = null,
  }) {
    return _then(_CreateStudentRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
