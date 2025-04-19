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
      createdAt: const JsonTimestamp().fromJson(json['createdAt'] as Timestamp),
      updatedAt: const JsonTimestamp().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'tags': instance.tags,
      'createdAt': const JsonTimestamp().toJson(instance.createdAt),
      'updatedAt': const JsonTimestamp().toJson(instance.updatedAt),
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
