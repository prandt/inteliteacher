// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => _CourseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'tags': instance.tags,
    };

_CreateCourseRequest _$CreateCourseRequestFromJson(Map<String, dynamic> json) =>
    _CreateCourseRequest(
      name: json['name'] as String,
      logo: json['logo'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CreateCourseRequestToJson(
        _CreateCourseRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'tags': instance.tags,
    };
