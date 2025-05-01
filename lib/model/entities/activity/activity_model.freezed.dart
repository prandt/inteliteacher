// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityModel {
  String get id;
  String get courseId;
  String get classId;
  String get title;
  String? get description;
  int? get points;
  @JsonTimestamp()
  DateTime get createdAt;
  @JsonTimestamp()
  DateTime get updatedAt;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      _$ActivityModelCopyWithImpl<ActivityModel>(
          this as ActivityModel, _$identity);

  /// Serializes this ActivityModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, classId, title,
      description, points, createdAt, updatedAt);

  @override
  String toString() {
    return 'ActivityModel(id: $id, courseId: $courseId, classId: $classId, title: $title, description: $description, points: $points, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) _then) =
      _$ActivityModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String courseId,
      String classId,
      String title,
      String? description,
      int? points,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._self, this._then);

  final ActivityModel _self;
  final $Res Function(ActivityModel) _then;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? classId = null,
    Object? title = null,
    Object? description = freezed,
    Object? points = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _self.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _ActivityModel implements ActivityModel {
  const _ActivityModel(
      {required this.id,
      required this.courseId,
      required this.classId,
      required this.title,
      required this.description,
      required this.points,
      @JsonTimestamp() required this.createdAt,
      @JsonTimestamp() required this.updatedAt});
  factory _ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String classId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final int? points;
  @override
  @JsonTimestamp()
  final DateTime createdAt;
  @override
  @JsonTimestamp()
  final DateTime updatedAt;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActivityModelCopyWith<_ActivityModel> get copyWith =>
      __$ActivityModelCopyWithImpl<_ActivityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActivityModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, classId, title,
      description, points, createdAt, updatedAt);

  @override
  String toString() {
    return 'ActivityModel(id: $id, courseId: $courseId, classId: $classId, title: $title, description: $description, points: $points, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ActivityModelCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$ActivityModelCopyWith(
          _ActivityModel value, $Res Function(_ActivityModel) _then) =
      __$ActivityModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String courseId,
      String classId,
      String title,
      String? description,
      int? points,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});
}

/// @nodoc
class __$ActivityModelCopyWithImpl<$Res>
    implements _$ActivityModelCopyWith<$Res> {
  __$ActivityModelCopyWithImpl(this._self, this._then);

  final _ActivityModel _self;
  final $Res Function(_ActivityModel) _then;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? classId = null,
    Object? title = null,
    Object? description = freezed,
    Object? points = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ActivityModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _self.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
mixin _$CreateActivityRequest {
  String get title;
  String? get description;
  int? get points;
  String get courseId;
  String get classId;

  /// Create a copy of CreateActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateActivityRequestCopyWith<CreateActivityRequest> get copyWith =>
      _$CreateActivityRequestCopyWithImpl<CreateActivityRequest>(
          this as CreateActivityRequest, _$identity);

  /// Serializes this CreateActivityRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateActivityRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, points, courseId, classId);

  @override
  String toString() {
    return 'CreateActivityRequest(title: $title, description: $description, points: $points, courseId: $courseId, classId: $classId)';
  }
}

/// @nodoc
abstract mixin class $CreateActivityRequestCopyWith<$Res> {
  factory $CreateActivityRequestCopyWith(CreateActivityRequest value,
          $Res Function(CreateActivityRequest) _then) =
      _$CreateActivityRequestCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String? description,
      int? points,
      String courseId,
      String classId});
}

/// @nodoc
class _$CreateActivityRequestCopyWithImpl<$Res>
    implements $CreateActivityRequestCopyWith<$Res> {
  _$CreateActivityRequestCopyWithImpl(this._self, this._then);

  final CreateActivityRequest _self;
  final $Res Function(CreateActivityRequest) _then;

  /// Create a copy of CreateActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? points = freezed,
    Object? courseId = null,
    Object? classId = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _self.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateActivityRequest implements CreateActivityRequest {
  const _CreateActivityRequest(
      {required this.title,
      required this.description,
      required this.points,
      required this.courseId,
      required this.classId});
  factory _CreateActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateActivityRequestFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final int? points;
  @override
  final String courseId;
  @override
  final String classId;

  /// Create a copy of CreateActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateActivityRequestCopyWith<_CreateActivityRequest> get copyWith =>
      __$CreateActivityRequestCopyWithImpl<_CreateActivityRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateActivityRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateActivityRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, points, courseId, classId);

  @override
  String toString() {
    return 'CreateActivityRequest(title: $title, description: $description, points: $points, courseId: $courseId, classId: $classId)';
  }
}

/// @nodoc
abstract mixin class _$CreateActivityRequestCopyWith<$Res>
    implements $CreateActivityRequestCopyWith<$Res> {
  factory _$CreateActivityRequestCopyWith(_CreateActivityRequest value,
          $Res Function(_CreateActivityRequest) _then) =
      __$CreateActivityRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      int? points,
      String courseId,
      String classId});
}

/// @nodoc
class __$CreateActivityRequestCopyWithImpl<$Res>
    implements _$CreateActivityRequestCopyWith<$Res> {
  __$CreateActivityRequestCopyWithImpl(this._self, this._then);

  final _CreateActivityRequest _self;
  final $Res Function(_CreateActivityRequest) _then;

  /// Create a copy of CreateActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? points = freezed,
    Object? courseId = null,
    Object? classId = null,
  }) {
    return _then(_CreateActivityRequest(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _self.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SimpleActivityModel {
  String get title;
  String get description;
  int get points;

  /// Create a copy of SimpleActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleActivityModelCopyWith<SimpleActivityModel> get copyWith =>
      _$SimpleActivityModelCopyWithImpl<SimpleActivityModel>(
          this as SimpleActivityModel, _$identity);

  /// Serializes this SimpleActivityModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleActivityModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, points);

  @override
  String toString() {
    return 'SimpleActivityModel(title: $title, description: $description, points: $points)';
  }
}

/// @nodoc
abstract mixin class $SimpleActivityModelCopyWith<$Res> {
  factory $SimpleActivityModelCopyWith(
          SimpleActivityModel value, $Res Function(SimpleActivityModel) _then) =
      _$SimpleActivityModelCopyWithImpl;
  @useResult
  $Res call({String title, String description, int points});
}

/// @nodoc
class _$SimpleActivityModelCopyWithImpl<$Res>
    implements $SimpleActivityModelCopyWith<$Res> {
  _$SimpleActivityModelCopyWithImpl(this._self, this._then);

  final SimpleActivityModel _self;
  final $Res Function(SimpleActivityModel) _then;

  /// Create a copy of SimpleActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? points = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SimpleActivityModel implements SimpleActivityModel {
  const _SimpleActivityModel(
      {required this.title, required this.description, required this.points});
  factory _SimpleActivityModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleActivityModelFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int points;

  /// Create a copy of SimpleActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SimpleActivityModelCopyWith<_SimpleActivityModel> get copyWith =>
      __$SimpleActivityModelCopyWithImpl<_SimpleActivityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SimpleActivityModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SimpleActivityModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, points);

  @override
  String toString() {
    return 'SimpleActivityModel(title: $title, description: $description, points: $points)';
  }
}

/// @nodoc
abstract mixin class _$SimpleActivityModelCopyWith<$Res>
    implements $SimpleActivityModelCopyWith<$Res> {
  factory _$SimpleActivityModelCopyWith(_SimpleActivityModel value,
          $Res Function(_SimpleActivityModel) _then) =
      __$SimpleActivityModelCopyWithImpl;
  @override
  @useResult
  $Res call({String title, String description, int points});
}

/// @nodoc
class __$SimpleActivityModelCopyWithImpl<$Res>
    implements _$SimpleActivityModelCopyWith<$Res> {
  __$SimpleActivityModelCopyWithImpl(this._self, this._then);

  final _SimpleActivityModel _self;
  final $Res Function(_SimpleActivityModel) _then;

  /// Create a copy of SimpleActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? points = null,
  }) {
    return _then(_SimpleActivityModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
