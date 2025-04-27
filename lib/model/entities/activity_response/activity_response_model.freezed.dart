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
  StudentModel get student;
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
            (identical(other.student, student) || other.student == student) &&
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
  int get hashCode => Object.hash(runtimeType, id, student, courseId, classId,
      points, createdAt, updatedAt);

  @override
  String toString() {
    return 'ActivityResponseModel(id: $id, student: $student, courseId: $courseId, classId: $classId, points: $points, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      StudentModel student,
      String courseId,
      String classId,
      int? points,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});

  $StudentModelCopyWith<$Res> get student;
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
    Object? student = null,
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
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
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

  /// Create a copy of ActivityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get student {
    return $StudentModelCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ActivityResponseModel implements ActivityResponseModel {
  const _ActivityResponseModel(
      {required this.id,
      required this.student,
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
  final StudentModel student;
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
            (identical(other.student, student) || other.student == student) &&
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
  int get hashCode => Object.hash(runtimeType, id, student, courseId, classId,
      points, createdAt, updatedAt);

  @override
  String toString() {
    return 'ActivityResponseModel(id: $id, student: $student, courseId: $courseId, classId: $classId, points: $points, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      StudentModel student,
      String courseId,
      String classId,
      int? points,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});

  @override
  $StudentModelCopyWith<$Res> get student;
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
    Object? student = null,
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
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
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

  /// Create a copy of ActivityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get student {
    return $StudentModelCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

/// @nodoc
mixin _$CreateActivityResponseRequest {
  StudentModel get student;
  String get courseId;
  String get classId;
  int? get points;

  /// Create a copy of CreateActivityResponseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateActivityResponseRequestCopyWith<CreateActivityResponseRequest>
      get copyWith => _$CreateActivityResponseRequestCopyWithImpl<
              CreateActivityResponseRequest>(
          this as CreateActivityResponseRequest, _$identity);

  /// Serializes this CreateActivityResponseRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateActivityResponseRequest &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, student, courseId, classId, points);

  @override
  String toString() {
    return 'CreateActivityResponseRequest(student: $student, courseId: $courseId, classId: $classId, points: $points)';
  }
}

/// @nodoc
abstract mixin class $CreateActivityResponseRequestCopyWith<$Res> {
  factory $CreateActivityResponseRequestCopyWith(
          CreateActivityResponseRequest value,
          $Res Function(CreateActivityResponseRequest) _then) =
      _$CreateActivityResponseRequestCopyWithImpl;
  @useResult
  $Res call(
      {StudentModel student, String courseId, String classId, int? points});

  $StudentModelCopyWith<$Res> get student;
}

/// @nodoc
class _$CreateActivityResponseRequestCopyWithImpl<$Res>
    implements $CreateActivityResponseRequestCopyWith<$Res> {
  _$CreateActivityResponseRequestCopyWithImpl(this._self, this._then);

  final CreateActivityResponseRequest _self;
  final $Res Function(CreateActivityResponseRequest) _then;

  /// Create a copy of CreateActivityResponseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? courseId = null,
    Object? classId = null,
    Object? points = freezed,
  }) {
    return _then(_self.copyWith(
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
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
    ));
  }

  /// Create a copy of CreateActivityResponseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get student {
    return $StudentModelCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _CreateActivityResponseRequest implements CreateActivityResponseRequest {
  const _CreateActivityResponseRequest(
      {required this.student,
      required this.courseId,
      required this.classId,
      required this.points});
  factory _CreateActivityResponseRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateActivityResponseRequestFromJson(json);

  @override
  final StudentModel student;
  @override
  final String courseId;
  @override
  final String classId;
  @override
  final int? points;

  /// Create a copy of CreateActivityResponseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateActivityResponseRequestCopyWith<_CreateActivityResponseRequest>
      get copyWith => __$CreateActivityResponseRequestCopyWithImpl<
          _CreateActivityResponseRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateActivityResponseRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateActivityResponseRequest &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, student, courseId, classId, points);

  @override
  String toString() {
    return 'CreateActivityResponseRequest(student: $student, courseId: $courseId, classId: $classId, points: $points)';
  }
}

/// @nodoc
abstract mixin class _$CreateActivityResponseRequestCopyWith<$Res>
    implements $CreateActivityResponseRequestCopyWith<$Res> {
  factory _$CreateActivityResponseRequestCopyWith(
          _CreateActivityResponseRequest value,
          $Res Function(_CreateActivityResponseRequest) _then) =
      __$CreateActivityResponseRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StudentModel student, String courseId, String classId, int? points});

  @override
  $StudentModelCopyWith<$Res> get student;
}

/// @nodoc
class __$CreateActivityResponseRequestCopyWithImpl<$Res>
    implements _$CreateActivityResponseRequestCopyWith<$Res> {
  __$CreateActivityResponseRequestCopyWithImpl(this._self, this._then);

  final _CreateActivityResponseRequest _self;
  final $Res Function(_CreateActivityResponseRequest) _then;

  /// Create a copy of CreateActivityResponseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? student = null,
    Object? courseId = null,
    Object? classId = null,
    Object? points = freezed,
  }) {
    return _then(_CreateActivityResponseRequest(
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
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
    ));
  }

  /// Create a copy of CreateActivityResponseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get student {
    return $StudentModelCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

// dart format on
