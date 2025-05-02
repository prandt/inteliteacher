// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityResponseModel {
  String get id;
  String get studentId;
  String get studentName;
  String get courseId;
  String get classId;
  int? get points;
  @JsonTimestamp()
  DateTime get createdAt;
  @JsonTimestamp()
  DateTime get updatedAt;

  /// Create a copy of ActivityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActivityResponseModelCopyWith<ActivityResponseModel> get copyWith =>
      _$ActivityResponseModelCopyWithImpl<ActivityResponseModel>(
          this as ActivityResponseModel, _$identity);

  /// Serializes this ActivityResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, studentId, studentName,
      courseId, classId, points, createdAt, updatedAt);

  @override
  String toString() {
    return 'ActivityResponseModel(id: $id, studentId: $studentId, studentName: $studentName, courseId: $courseId, classId: $classId, points: $points, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ActivityResponseModelCopyWith<$Res> {
  factory $ActivityResponseModelCopyWith(ActivityResponseModel value,
          $Res Function(ActivityResponseModel) _then) =
      _$ActivityResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String studentId,
      String studentName,
      String courseId,
      String classId,
      int? points,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});
}

/// @nodoc
class _$ActivityResponseModelCopyWithImpl<$Res>
    implements $ActivityResponseModelCopyWith<$Res> {
  _$ActivityResponseModelCopyWithImpl(this._self, this._then);

  final ActivityResponseModel _self;
  final $Res Function(ActivityResponseModel) _then;

  /// Create a copy of ActivityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? courseId = null,
    Object? classId = null,
    Object? points = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _self.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _self.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _self.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      points: freezed == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _ActivityResponseModel implements ActivityResponseModel {
  const _ActivityResponseModel(
      {required this.id,
      required this.studentId,
      required this.studentName,
      required this.courseId,
      required this.classId,
      required this.points,
      @JsonTimestamp() required this.createdAt,
      @JsonTimestamp() required this.updatedAt});
  factory _ActivityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseModelFromJson(json);

  @override
  final String id;
  @override
  final String studentId;
  @override
  final String studentName;
  @override
  final String courseId;
  @override
  final String classId;
  @override
  final int? points;
  @override
  @JsonTimestamp()
  final DateTime createdAt;
  @override
  @JsonTimestamp()
  final DateTime updatedAt;

  /// Create a copy of ActivityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActivityResponseModelCopyWith<_ActivityResponseModel> get copyWith =>
      __$ActivityResponseModelCopyWithImpl<_ActivityResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActivityResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, studentId, studentName,
      courseId, classId, points, createdAt, updatedAt);

  @override
  String toString() {
    return 'ActivityResponseModel(id: $id, studentId: $studentId, studentName: $studentName, courseId: $courseId, classId: $classId, points: $points, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ActivityResponseModelCopyWith<$Res>
    implements $ActivityResponseModelCopyWith<$Res> {
  factory _$ActivityResponseModelCopyWith(_ActivityResponseModel value,
          $Res Function(_ActivityResponseModel) _then) =
      __$ActivityResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String studentId,
      String studentName,
      String courseId,
      String classId,
      int? points,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});
}

/// @nodoc
class __$ActivityResponseModelCopyWithImpl<$Res>
    implements _$ActivityResponseModelCopyWith<$Res> {
  __$ActivityResponseModelCopyWithImpl(this._self, this._then);

  final _ActivityResponseModel _self;
  final $Res Function(_ActivityResponseModel) _then;

  /// Create a copy of ActivityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? courseId = null,
    Object? classId = null,
    Object? points = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ActivityResponseModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _self.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _self.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _self.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      points: freezed == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
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
mixin _$StudentWithResponse {
  StudentModel get student;
  ActivityResponseModel? get activityResponse;

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StudentWithResponseCopyWith<StudentWithResponse> get copyWith =>
      _$StudentWithResponseCopyWithImpl<StudentWithResponse>(
          this as StudentWithResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StudentWithResponse &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.activityResponse, activityResponse) ||
                other.activityResponse == activityResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student, activityResponse);

  @override
  String toString() {
    return 'StudentWithResponse(student: $student, activityResponse: $activityResponse)';
  }
}

/// @nodoc
abstract mixin class $StudentWithResponseCopyWith<$Res> {
  factory $StudentWithResponseCopyWith(
          StudentWithResponse value, $Res Function(StudentWithResponse) _then) =
      _$StudentWithResponseCopyWithImpl;
  @useResult
  $Res call({StudentModel student, ActivityResponseModel? activityResponse});

  $StudentModelCopyWith<$Res> get student;
  $ActivityResponseModelCopyWith<$Res>? get activityResponse;
}

/// @nodoc
class _$StudentWithResponseCopyWithImpl<$Res>
    implements $StudentWithResponseCopyWith<$Res> {
  _$StudentWithResponseCopyWithImpl(this._self, this._then);

  final StudentWithResponse _self;
  final $Res Function(StudentWithResponse) _then;

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? activityResponse = freezed,
  }) {
    return _then(_self.copyWith(
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      activityResponse: freezed == activityResponse
          ? _self.activityResponse
          : activityResponse // ignore: cast_nullable_to_non_nullable
              as ActivityResponseModel?,
    ));
  }

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get student {
    return $StudentModelCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityResponseModelCopyWith<$Res>? get activityResponse {
    if (_self.activityResponse == null) {
      return null;
    }

    return $ActivityResponseModelCopyWith<$Res>(_self.activityResponse!,
        (value) {
      return _then(_self.copyWith(activityResponse: value));
    });
  }
}

/// @nodoc

class _StudentWithResponse implements StudentWithResponse {
  const _StudentWithResponse(
      {required this.student, required this.activityResponse});

  @override
  final StudentModel student;
  @override
  final ActivityResponseModel? activityResponse;

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StudentWithResponseCopyWith<_StudentWithResponse> get copyWith =>
      __$StudentWithResponseCopyWithImpl<_StudentWithResponse>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StudentWithResponse &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.activityResponse, activityResponse) ||
                other.activityResponse == activityResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student, activityResponse);

  @override
  String toString() {
    return 'StudentWithResponse(student: $student, activityResponse: $activityResponse)';
  }
}

/// @nodoc
abstract mixin class _$StudentWithResponseCopyWith<$Res>
    implements $StudentWithResponseCopyWith<$Res> {
  factory _$StudentWithResponseCopyWith(_StudentWithResponse value,
          $Res Function(_StudentWithResponse) _then) =
      __$StudentWithResponseCopyWithImpl;
  @override
  @useResult
  $Res call({StudentModel student, ActivityResponseModel? activityResponse});

  @override
  $StudentModelCopyWith<$Res> get student;
  @override
  $ActivityResponseModelCopyWith<$Res>? get activityResponse;
}

/// @nodoc
class __$StudentWithResponseCopyWithImpl<$Res>
    implements _$StudentWithResponseCopyWith<$Res> {
  __$StudentWithResponseCopyWithImpl(this._self, this._then);

  final _StudentWithResponse _self;
  final $Res Function(_StudentWithResponse) _then;

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? student = null,
    Object? activityResponse = freezed,
  }) {
    return _then(_StudentWithResponse(
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      activityResponse: freezed == activityResponse
          ? _self.activityResponse
          : activityResponse // ignore: cast_nullable_to_non_nullable
              as ActivityResponseModel?,
    ));
  }

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get student {
    return $StudentModelCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }

  /// Create a copy of StudentWithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityResponseModelCopyWith<$Res>? get activityResponse {
    if (_self.activityResponse == null) {
      return null;
    }

    return $ActivityResponseModelCopyWith<$Res>(_self.activityResponse!,
        (value) {
      return _then(_self.copyWith(activityResponse: value));
    });
  }
}

// dart format on
