// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassPlanModel {
  String get id;
  String get title;
  String? get objective;
  String? get targetAudience;
  String get duration;
  List<String?>? get resources;
  String? get methodology;
  List<String>? get content;
  List<String>? get activities;
  String? get evaluation;
  String? get notes;

  /// Create a copy of ClassPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassPlanModelCopyWith<ClassPlanModel> get copyWith =>
      _$ClassPlanModelCopyWithImpl<ClassPlanModel>(
          this as ClassPlanModel, _$identity);

  /// Serializes this ClassPlanModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClassPlanModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.objective, objective) ||
                other.objective == objective) &&
            (identical(other.targetAudience, targetAudience) ||
                other.targetAudience == targetAudience) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other.resources, resources) &&
            (identical(other.methodology, methodology) ||
                other.methodology == methodology) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      objective,
      targetAudience,
      duration,
      const DeepCollectionEquality().hash(resources),
      methodology,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(activities),
      evaluation,
      notes);

  @override
  String toString() {
    return 'ClassPlanModel(id: $id, title: $title, objective: $objective, targetAudience: $targetAudience, duration: $duration, resources: $resources, methodology: $methodology, content: $content, activities: $activities, evaluation: $evaluation, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $ClassPlanModelCopyWith<$Res> {
  factory $ClassPlanModelCopyWith(
          ClassPlanModel value, $Res Function(ClassPlanModel) _then) =
      _$ClassPlanModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String? objective,
      String? targetAudience,
      String duration,
      List<String?>? resources,
      String? methodology,
      List<String>? content,
      List<String>? activities,
      String? evaluation,
      String? notes});
}

/// @nodoc
class _$ClassPlanModelCopyWithImpl<$Res>
    implements $ClassPlanModelCopyWith<$Res> {
  _$ClassPlanModelCopyWithImpl(this._self, this._then);

  final ClassPlanModel _self;
  final $Res Function(ClassPlanModel) _then;

  /// Create a copy of ClassPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? objective = freezed,
    Object? targetAudience = freezed,
    Object? duration = null,
    Object? resources = freezed,
    Object? methodology = freezed,
    Object? content = freezed,
    Object? activities = freezed,
    Object? evaluation = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      objective: freezed == objective
          ? _self.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAudience: freezed == targetAudience
          ? _self.targetAudience
          : targetAudience // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      resources: freezed == resources
          ? _self.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      methodology: freezed == methodology
          ? _self.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      activities: freezed == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      evaluation: freezed == evaluation
          ? _self.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ClassPlanModel implements ClassPlanModel {
  const _ClassPlanModel(
      {required this.id,
      required this.title,
      required this.objective,
      required this.targetAudience,
      required this.duration,
      required final List<String?>? resources,
      required this.methodology,
      required final List<String>? content,
      required final List<String>? activities,
      required this.evaluation,
      required this.notes})
      : _resources = resources,
        _content = content,
        _activities = activities;
  factory _ClassPlanModel.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? objective;
  @override
  final String? targetAudience;
  @override
  final String duration;
  final List<String?>? _resources;
  @override
  List<String?>? get resources {
    final value = _resources;
    if (value == null) return null;
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? methodology;
  final List<String>? _content;
  @override
  List<String>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _activities;
  @override
  List<String>? get activities {
    final value = _activities;
    if (value == null) return null;
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? evaluation;
  @override
  final String? notes;

  /// Create a copy of ClassPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClassPlanModelCopyWith<_ClassPlanModel> get copyWith =>
      __$ClassPlanModelCopyWithImpl<_ClassPlanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClassPlanModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassPlanModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.objective, objective) ||
                other.objective == objective) &&
            (identical(other.targetAudience, targetAudience) ||
                other.targetAudience == targetAudience) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            (identical(other.methodology, methodology) ||
                other.methodology == methodology) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      objective,
      targetAudience,
      duration,
      const DeepCollectionEquality().hash(_resources),
      methodology,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_activities),
      evaluation,
      notes);

  @override
  String toString() {
    return 'ClassPlanModel(id: $id, title: $title, objective: $objective, targetAudience: $targetAudience, duration: $duration, resources: $resources, methodology: $methodology, content: $content, activities: $activities, evaluation: $evaluation, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$ClassPlanModelCopyWith<$Res>
    implements $ClassPlanModelCopyWith<$Res> {
  factory _$ClassPlanModelCopyWith(
          _ClassPlanModel value, $Res Function(_ClassPlanModel) _then) =
      __$ClassPlanModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? objective,
      String? targetAudience,
      String duration,
      List<String?>? resources,
      String? methodology,
      List<String>? content,
      List<String>? activities,
      String? evaluation,
      String? notes});
}

/// @nodoc
class __$ClassPlanModelCopyWithImpl<$Res>
    implements _$ClassPlanModelCopyWith<$Res> {
  __$ClassPlanModelCopyWithImpl(this._self, this._then);

  final _ClassPlanModel _self;
  final $Res Function(_ClassPlanModel) _then;

  /// Create a copy of ClassPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? objective = freezed,
    Object? targetAudience = freezed,
    Object? duration = null,
    Object? resources = freezed,
    Object? methodology = freezed,
    Object? content = freezed,
    Object? activities = freezed,
    Object? evaluation = freezed,
    Object? notes = freezed,
  }) {
    return _then(_ClassPlanModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      objective: freezed == objective
          ? _self.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAudience: freezed == targetAudience
          ? _self.targetAudience
          : targetAudience // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      resources: freezed == resources
          ? _self._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      methodology: freezed == methodology
          ? _self.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      activities: freezed == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      evaluation: freezed == evaluation
          ? _self.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SimpleClassPlanResponse {
  String get id;
  String get title;

  /// Create a copy of SimpleClassPlanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleClassPlanResponseCopyWith<SimpleClassPlanResponse> get copyWith =>
      _$SimpleClassPlanResponseCopyWithImpl<SimpleClassPlanResponse>(
          this as SimpleClassPlanResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleClassPlanResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @override
  String toString() {
    return 'SimpleClassPlanResponse(id: $id, title: $title)';
  }
}

/// @nodoc
abstract mixin class $SimpleClassPlanResponseCopyWith<$Res> {
  factory $SimpleClassPlanResponseCopyWith(SimpleClassPlanResponse value,
          $Res Function(SimpleClassPlanResponse) _then) =
      _$SimpleClassPlanResponseCopyWithImpl;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$SimpleClassPlanResponseCopyWithImpl<$Res>
    implements $SimpleClassPlanResponseCopyWith<$Res> {
  _$SimpleClassPlanResponseCopyWithImpl(this._self, this._then);

  final SimpleClassPlanResponse _self;
  final $Res Function(SimpleClassPlanResponse) _then;

  /// Create a copy of SimpleClassPlanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SimpleClassPlanResponse implements SimpleClassPlanResponse {
  const _SimpleClassPlanResponse({required this.id, required this.title});

  @override
  final String id;
  @override
  final String title;

  /// Create a copy of SimpleClassPlanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SimpleClassPlanResponseCopyWith<_SimpleClassPlanResponse> get copyWith =>
      __$SimpleClassPlanResponseCopyWithImpl<_SimpleClassPlanResponse>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SimpleClassPlanResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @override
  String toString() {
    return 'SimpleClassPlanResponse(id: $id, title: $title)';
  }
}

/// @nodoc
abstract mixin class _$SimpleClassPlanResponseCopyWith<$Res>
    implements $SimpleClassPlanResponseCopyWith<$Res> {
  factory _$SimpleClassPlanResponseCopyWith(_SimpleClassPlanResponse value,
          $Res Function(_SimpleClassPlanResponse) _then) =
      __$SimpleClassPlanResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$SimpleClassPlanResponseCopyWithImpl<$Res>
    implements _$SimpleClassPlanResponseCopyWith<$Res> {
  __$SimpleClassPlanResponseCopyWithImpl(this._self, this._then);

  final _SimpleClassPlanResponse _self;
  final $Res Function(_SimpleClassPlanResponse) _then;

  /// Create a copy of SimpleClassPlanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_SimpleClassPlanResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CreateClassPlanRequest {
  String get title;
  String? get objective;
  String? get targetAudience;
  String get duration;
  List<String?>? get resources;
  String? get methodology;
  List<String>? get content;
  List<String>? get activities;
  String? get evaluation;
  String? get notes;

  /// Create a copy of CreateClassPlanRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateClassPlanRequestCopyWith<CreateClassPlanRequest> get copyWith =>
      _$CreateClassPlanRequestCopyWithImpl<CreateClassPlanRequest>(
          this as CreateClassPlanRequest, _$identity);

  /// Serializes this CreateClassPlanRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateClassPlanRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.objective, objective) ||
                other.objective == objective) &&
            (identical(other.targetAudience, targetAudience) ||
                other.targetAudience == targetAudience) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other.resources, resources) &&
            (identical(other.methodology, methodology) ||
                other.methodology == methodology) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      objective,
      targetAudience,
      duration,
      const DeepCollectionEquality().hash(resources),
      methodology,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(activities),
      evaluation,
      notes);

  @override
  String toString() {
    return 'CreateClassPlanRequest(title: $title, objective: $objective, targetAudience: $targetAudience, duration: $duration, resources: $resources, methodology: $methodology, content: $content, activities: $activities, evaluation: $evaluation, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $CreateClassPlanRequestCopyWith<$Res> {
  factory $CreateClassPlanRequestCopyWith(CreateClassPlanRequest value,
          $Res Function(CreateClassPlanRequest) _then) =
      _$CreateClassPlanRequestCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String? objective,
      String? targetAudience,
      String duration,
      List<String?>? resources,
      String? methodology,
      List<String>? content,
      List<String>? activities,
      String? evaluation,
      String? notes});
}

/// @nodoc
class _$CreateClassPlanRequestCopyWithImpl<$Res>
    implements $CreateClassPlanRequestCopyWith<$Res> {
  _$CreateClassPlanRequestCopyWithImpl(this._self, this._then);

  final CreateClassPlanRequest _self;
  final $Res Function(CreateClassPlanRequest) _then;

  /// Create a copy of CreateClassPlanRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? objective = freezed,
    Object? targetAudience = freezed,
    Object? duration = null,
    Object? resources = freezed,
    Object? methodology = freezed,
    Object? content = freezed,
    Object? activities = freezed,
    Object? evaluation = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      objective: freezed == objective
          ? _self.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAudience: freezed == targetAudience
          ? _self.targetAudience
          : targetAudience // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      resources: freezed == resources
          ? _self.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      methodology: freezed == methodology
          ? _self.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      activities: freezed == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      evaluation: freezed == evaluation
          ? _self.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateClassPlanRequest implements CreateClassPlanRequest {
  const _CreateClassPlanRequest(
      {required this.title,
      required this.objective,
      required this.targetAudience,
      required this.duration,
      required final List<String?>? resources,
      required this.methodology,
      required final List<String>? content,
      required final List<String>? activities,
      required this.evaluation,
      required this.notes})
      : _resources = resources,
        _content = content,
        _activities = activities;
  factory _CreateClassPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateClassPlanRequestFromJson(json);

  @override
  final String title;
  @override
  final String? objective;
  @override
  final String? targetAudience;
  @override
  final String duration;
  final List<String?>? _resources;
  @override
  List<String?>? get resources {
    final value = _resources;
    if (value == null) return null;
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? methodology;
  final List<String>? _content;
  @override
  List<String>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _activities;
  @override
  List<String>? get activities {
    final value = _activities;
    if (value == null) return null;
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? evaluation;
  @override
  final String? notes;

  /// Create a copy of CreateClassPlanRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateClassPlanRequestCopyWith<_CreateClassPlanRequest> get copyWith =>
      __$CreateClassPlanRequestCopyWithImpl<_CreateClassPlanRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateClassPlanRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateClassPlanRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.objective, objective) ||
                other.objective == objective) &&
            (identical(other.targetAudience, targetAudience) ||
                other.targetAudience == targetAudience) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            (identical(other.methodology, methodology) ||
                other.methodology == methodology) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      objective,
      targetAudience,
      duration,
      const DeepCollectionEquality().hash(_resources),
      methodology,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_activities),
      evaluation,
      notes);

  @override
  String toString() {
    return 'CreateClassPlanRequest(title: $title, objective: $objective, targetAudience: $targetAudience, duration: $duration, resources: $resources, methodology: $methodology, content: $content, activities: $activities, evaluation: $evaluation, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$CreateClassPlanRequestCopyWith<$Res>
    implements $CreateClassPlanRequestCopyWith<$Res> {
  factory _$CreateClassPlanRequestCopyWith(_CreateClassPlanRequest value,
          $Res Function(_CreateClassPlanRequest) _then) =
      __$CreateClassPlanRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String? objective,
      String? targetAudience,
      String duration,
      List<String?>? resources,
      String? methodology,
      List<String>? content,
      List<String>? activities,
      String? evaluation,
      String? notes});
}

/// @nodoc
class __$CreateClassPlanRequestCopyWithImpl<$Res>
    implements _$CreateClassPlanRequestCopyWith<$Res> {
  __$CreateClassPlanRequestCopyWithImpl(this._self, this._then);

  final _CreateClassPlanRequest _self;
  final $Res Function(_CreateClassPlanRequest) _then;

  /// Create a copy of CreateClassPlanRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? objective = freezed,
    Object? targetAudience = freezed,
    Object? duration = null,
    Object? resources = freezed,
    Object? methodology = freezed,
    Object? content = freezed,
    Object? activities = freezed,
    Object? evaluation = freezed,
    Object? notes = freezed,
  }) {
    return _then(_CreateClassPlanRequest(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      objective: freezed == objective
          ? _self.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAudience: freezed == targetAudience
          ? _self.targetAudience
          : targetAudience // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      resources: freezed == resources
          ? _self._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      methodology: freezed == methodology
          ? _self.methodology
          : methodology // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      activities: freezed == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      evaluation: freezed == evaluation
          ? _self.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
