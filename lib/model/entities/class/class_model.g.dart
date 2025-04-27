// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassModel _$ClassModelFromJson(Map<String, dynamic> json) => _ClassModel(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      classPlan: json['classPlan'] == null
          ? null
          : ClassPlanModel.fromJson(json['classPlan'] as Map<String, dynamic>),
      startAt: const JsonTimestamp().fromJson(json['startAt'] as Timestamp),
      createdAt: const JsonTimestamp().fromJson(json['createdAt'] as Timestamp),
      updatedAt: const JsonTimestamp().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$ClassModelToJson(_ClassModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'title': instance.title,
      'description': instance.description,
      'classPlan': instance.classPlan,
      'startAt': const JsonTimestamp().toJson(instance.startAt),
      'createdAt': const JsonTimestamp().toJson(instance.createdAt),
      'updatedAt': const JsonTimestamp().toJson(instance.updatedAt),
    };

_CreateClassRequest _$CreateClassRequestFromJson(Map<String, dynamic> json) =>
    _CreateClassRequest(
      courseId: json['courseId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      startAt: const JsonTimestamp().fromJson(json['startAt'] as Timestamp),
    );

Map<String, dynamic> _$CreateClassRequestToJson(_CreateClassRequest instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'title': instance.title,
      'description': instance.description,
      'startAt': const JsonTimestamp().toJson(instance.startAt),
    };
