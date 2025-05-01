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
  String get title;
  String? get objective;
  String? get targetAudience;
  int? get duration;
  List<String?>? get resources;
  String? get methodology;
  List<String>? get content;
  @JsonKey(includeToJson: false)
  List<SimpleActivityModel>? get activities;

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
                .equals(other.activities, activities));
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
      const DeepCollectionEquality().hash(activities));

  @override
  String toString() {
    return 'ClassPlanModel(title: $title, objective: $objective, targetAudience: $targetAudience, duration: $duration, resources: $resources, methodology: $methodology, content: $content, activities: $activities)';
  }
}

/// @nodoc
abstract mixin class $ClassPlanModelCopyWith<$Res> {
  factory $ClassPlanModelCopyWith(
          ClassPlanModel value, $Res Function(ClassPlanModel) _then) =
      _$ClassPlanModelCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String? objective,
      String? targetAudience,
      int? duration,
      List<String?>? resources,
      String? methodology,
      List<String>? content,
      @JsonKey(includeToJson: false) List<SimpleActivityModel>? activities});
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
    Object? title = null,
    Object? objective = freezed,
    Object? targetAudience = freezed,
    Object? duration = freezed,
    Object? resources = freezed,
    Object? methodology = freezed,
    Object? content = freezed,
    Object? activities = freezed,
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
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<SimpleActivityModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ClassPlanModel implements ClassPlanModel {
  const _ClassPlanModel(
      {required this.title,
      required this.objective,
      required this.targetAudience,
      this.duration = 0,
      required final List<String?>? resources,
      required this.methodology,
      required final List<String>? content,
      @JsonKey(includeToJson: false)
      required final List<SimpleActivityModel>? activities})
      : _resources = resources,
        _content = content,
        _activities = activities;
  factory _ClassPlanModel.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanModelFromJson(json);

  @override
  final String title;
  @override
  final String? objective;
  @override
  final String? targetAudience;
  @override
  @JsonKey()
  final int? duration;
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

  final List<SimpleActivityModel>? _activities;
  @override
  @JsonKey(includeToJson: false)
  List<SimpleActivityModel>? get activities {
    final value = _activities;
    if (value == null) return null;
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
                .equals(other._activities, _activities));
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
      const DeepCollectionEquality().hash(_activities));

  @override
  String toString() {
    return 'ClassPlanModel(title: $title, objective: $objective, targetAudience: $targetAudience, duration: $duration, resources: $resources, methodology: $methodology, content: $content, activities: $activities)';
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
      {String title,
      String? objective,
      String? targetAudience,
      int? duration,
      List<String?>? resources,
      String? methodology,
      List<String>? content,
      @JsonKey(includeToJson: false) List<SimpleActivityModel>? activities});
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
    Object? title = null,
    Object? objective = freezed,
    Object? targetAudience = freezed,
    Object? duration = freezed,
    Object? resources = freezed,
    Object? methodology = freezed,
    Object? content = freezed,
    Object? activities = freezed,
  }) {
    return _then(_ClassPlanModel(
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
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<SimpleActivityModel>?,
    ));
  }
}

// dart format on
