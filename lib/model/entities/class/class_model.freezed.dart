// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassModel {
  String get id;
  String get courseId;
  String get title;
  String? get description;
  ClassPlanModel? get classPlan;
  @JsonTimestamp()
  DateTime get startAt;
  @JsonTimestamp()
  DateTime get createdAt;
  @JsonTimestamp()
  DateTime get updatedAt;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassModelCopyWith<ClassModel> get copyWith =>
      _$ClassModelCopyWithImpl<ClassModel>(this as ClassModel, _$identity);

  /// Serializes this ClassModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClassModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, title, description,
      classPlan, startAt, createdAt, updatedAt);

  @override
  String toString() {
    return 'ClassModel(id: $id, courseId: $courseId, title: $title, description: $description, classPlan: $classPlan, startAt: $startAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ClassModelCopyWith<$Res> {
  factory $ClassModelCopyWith(
          ClassModel value, $Res Function(ClassModel) _then) =
      _$ClassModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String courseId,
      String title,
      String? description,
      ClassPlanModel? classPlan,
      @JsonTimestamp() DateTime startAt,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});

  $ClassPlanModelCopyWith<$Res>? get classPlan;
}

/// @nodoc
class _$ClassModelCopyWithImpl<$Res> implements $ClassModelCopyWith<$Res> {
  _$ClassModelCopyWithImpl(this._self, this._then);

  final ClassModel _self;
  final $Res Function(ClassModel) _then;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? description = freezed,
    Object? classPlan = freezed,
    Object? startAt = null,
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
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlan: freezed == classPlan
          ? _self.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanModel?,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanModelCopyWith<$Res>? get classPlan {
    if (_self.classPlan == null) {
      return null;
    }

    return $ClassPlanModelCopyWith<$Res>(_self.classPlan!, (value) {
      return _then(_self.copyWith(classPlan: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ClassModel implements ClassModel {
  const _ClassModel(
      {required this.id,
      required this.courseId,
      required this.title,
      required this.description,
      required this.classPlan,
      @JsonTimestamp() required this.startAt,
      @JsonTimestamp() required this.createdAt,
      @JsonTimestamp() required this.updatedAt});
  factory _ClassModel.fromJson(Map<String, dynamic> json) =>
      _$ClassModelFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final ClassPlanModel? classPlan;
  @override
  @JsonTimestamp()
  final DateTime startAt;
  @override
  @JsonTimestamp()
  final DateTime createdAt;
  @override
  @JsonTimestamp()
  final DateTime updatedAt;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClassModelCopyWith<_ClassModel> get copyWith =>
      __$ClassModelCopyWithImpl<_ClassModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClassModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, title, description,
      classPlan, startAt, createdAt, updatedAt);

  @override
  String toString() {
    return 'ClassModel(id: $id, courseId: $courseId, title: $title, description: $description, classPlan: $classPlan, startAt: $startAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ClassModelCopyWith<$Res>
    implements $ClassModelCopyWith<$Res> {
  factory _$ClassModelCopyWith(
          _ClassModel value, $Res Function(_ClassModel) _then) =
      __$ClassModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String courseId,
      String title,
      String? description,
      ClassPlanModel? classPlan,
      @JsonTimestamp() DateTime startAt,
      @JsonTimestamp() DateTime createdAt,
      @JsonTimestamp() DateTime updatedAt});

  @override
  $ClassPlanModelCopyWith<$Res>? get classPlan;
}

/// @nodoc
class __$ClassModelCopyWithImpl<$Res> implements _$ClassModelCopyWith<$Res> {
  __$ClassModelCopyWithImpl(this._self, this._then);

  final _ClassModel _self;
  final $Res Function(_ClassModel) _then;

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? description = freezed,
    Object? classPlan = freezed,
    Object? startAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ClassModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlan: freezed == classPlan
          ? _self.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanModel?,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

  /// Create a copy of ClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanModelCopyWith<$Res>? get classPlan {
    if (_self.classPlan == null) {
      return null;
    }

    return $ClassPlanModelCopyWith<$Res>(_self.classPlan!, (value) {
      return _then(_self.copyWith(classPlan: value));
    });
  }
}

/// @nodoc
mixin _$CreateClassRequest {
  String get courseId;
  String get title;
  String? get description;
  @JsonTimestamp()
  DateTime get startAt;

  /// Create a copy of CreateClassRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateClassRequestCopyWith<CreateClassRequest> get copyWith =>
      _$CreateClassRequestCopyWithImpl<CreateClassRequest>(
          this as CreateClassRequest, _$identity);

  /// Serializes this CreateClassRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateClassRequest &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startAt, startAt) || other.startAt == startAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, courseId, title, description, startAt);

  @override
  String toString() {
    return 'CreateClassRequest(courseId: $courseId, title: $title, description: $description, startAt: $startAt)';
  }
}

/// @nodoc
abstract mixin class $CreateClassRequestCopyWith<$Res> {
  factory $CreateClassRequestCopyWith(
          CreateClassRequest value, $Res Function(CreateClassRequest) _then) =
      _$CreateClassRequestCopyWithImpl;
  @useResult
  $Res call(
      {String courseId,
      String title,
      String? description,
      @JsonTimestamp() DateTime startAt});
}

/// @nodoc
class _$CreateClassRequestCopyWithImpl<$Res>
    implements $CreateClassRequestCopyWith<$Res> {
  _$CreateClassRequestCopyWithImpl(this._self, this._then);

  final CreateClassRequest _self;
  final $Res Function(CreateClassRequest) _then;

  /// Create a copy of CreateClassRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? description = freezed,
    Object? startAt = null,
  }) {
    return _then(_self.copyWith(
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateClassRequest implements CreateClassRequest {
  const _CreateClassRequest(
      {required this.courseId,
      required this.title,
      required this.description,
      @JsonTimestamp() required this.startAt});
  factory _CreateClassRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateClassRequestFromJson(json);

  @override
  final String courseId;
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonTimestamp()
  final DateTime startAt;

  /// Create a copy of CreateClassRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateClassRequestCopyWith<_CreateClassRequest> get copyWith =>
      __$CreateClassRequestCopyWithImpl<_CreateClassRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateClassRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateClassRequest &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startAt, startAt) || other.startAt == startAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, courseId, title, description, startAt);

  @override
  String toString() {
    return 'CreateClassRequest(courseId: $courseId, title: $title, description: $description, startAt: $startAt)';
  }
}

/// @nodoc
abstract mixin class _$CreateClassRequestCopyWith<$Res>
    implements $CreateClassRequestCopyWith<$Res> {
  factory _$CreateClassRequestCopyWith(
          _CreateClassRequest value, $Res Function(_CreateClassRequest) _then) =
      __$CreateClassRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String courseId,
      String title,
      String? description,
      @JsonTimestamp() DateTime startAt});
}

/// @nodoc
class __$CreateClassRequestCopyWithImpl<$Res>
    implements _$CreateClassRequestCopyWith<$Res> {
  __$CreateClassRequestCopyWithImpl(this._self, this._then);

  final _CreateClassRequest _self;
  final $Res Function(_CreateClassRequest) _then;

  /// Create a copy of CreateClassRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? courseId = null,
    Object? title = null,
    Object? description = freezed,
    Object? startAt = null,
  }) {
    return _then(_CreateClassRequest(
      courseId: null == courseId
          ? _self.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
