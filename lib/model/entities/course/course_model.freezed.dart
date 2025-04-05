// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModel {
  String get id;
  String get name;
  String? get logo;
  List<String>? get tags;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseModelCopyWith<CourseModel> get copyWith =>
      _$CourseModelCopyWithImpl<CourseModel>(this as CourseModel, _$identity);

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, logo, const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'CourseModel(id: $id, name: $name, logo: $logo, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) _then) =
      _$CourseModelCopyWithImpl;
  @useResult
  $Res call({String id, String name, String? logo, List<String>? tags});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res> implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._self, this._then);

  final CourseModel _self;
  final $Res Function(CourseModel) _then;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = freezed,
    Object? tags = freezed,
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
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CourseModel implements CourseModel {
  const _CourseModel(
      {required this.id,
      required this.name,
      required this.logo,
      required final List<String>? tags})
      : _tags = tags;
  factory _CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? logo;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseModelCopyWith<_CourseModel> get copyWith =>
      __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CourseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, logo, const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'CourseModel(id: $id, name: $name, logo: $logo, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(
          _CourseModel value, $Res Function(_CourseModel) _then) =
      __$CourseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String? logo, List<String>? tags});
}

/// @nodoc
class __$CourseModelCopyWithImpl<$Res> implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(this._self, this._then);

  final _CourseModel _self;
  final $Res Function(_CourseModel) _then;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = freezed,
    Object? tags = freezed,
  }) {
    return _then(_CourseModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$CreateCourseRequest {
  String get name;
  String? get logo;
  List<String>? get tags;

  /// Create a copy of CreateCourseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCourseRequestCopyWith<CreateCourseRequest> get copyWith =>
      _$CreateCourseRequestCopyWithImpl<CreateCourseRequest>(
          this as CreateCourseRequest, _$identity);

  /// Serializes this CreateCourseRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCourseRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, logo, const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'CreateCourseRequest(name: $name, logo: $logo, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $CreateCourseRequestCopyWith<$Res> {
  factory $CreateCourseRequestCopyWith(
          CreateCourseRequest value, $Res Function(CreateCourseRequest) _then) =
      _$CreateCourseRequestCopyWithImpl;
  @useResult
  $Res call({String name, String? logo, List<String>? tags});
}

/// @nodoc
class _$CreateCourseRequestCopyWithImpl<$Res>
    implements $CreateCourseRequestCopyWith<$Res> {
  _$CreateCourseRequestCopyWithImpl(this._self, this._then);

  final CreateCourseRequest _self;
  final $Res Function(CreateCourseRequest) _then;

  /// Create a copy of CreateCourseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = freezed,
    Object? tags = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateCourseRequest implements CreateCourseRequest {
  const _CreateCourseRequest(
      {required this.name,
      required this.logo,
      required final List<String>? tags})
      : _tags = tags;
  factory _CreateCourseRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCourseRequestFromJson(json);

  @override
  final String name;
  @override
  final String? logo;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CreateCourseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCourseRequestCopyWith<_CreateCourseRequest> get copyWith =>
      __$CreateCourseRequestCopyWithImpl<_CreateCourseRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateCourseRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCourseRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, logo, const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'CreateCourseRequest(name: $name, logo: $logo, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$CreateCourseRequestCopyWith<$Res>
    implements $CreateCourseRequestCopyWith<$Res> {
  factory _$CreateCourseRequestCopyWith(_CreateCourseRequest value,
          $Res Function(_CreateCourseRequest) _then) =
      __$CreateCourseRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String? logo, List<String>? tags});
}

/// @nodoc
class __$CreateCourseRequestCopyWithImpl<$Res>
    implements _$CreateCourseRequestCopyWith<$Res> {
  __$CreateCourseRequestCopyWithImpl(this._self, this._then);

  final _CreateCourseRequest _self;
  final $Res Function(_CreateCourseRequest) _then;

  /// Create a copy of CreateCourseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? logo = freezed,
    Object? tags = freezed,
  }) {
    return _then(_CreateCourseRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
