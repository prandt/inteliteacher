// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) =>
    _ActivityModel(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      classId: json['classId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      points: (json['points'] as num?)?.toInt(),
      createdAt: const JsonTimestamp().fromJson(json['createdAt'] as Timestamp),
      updatedAt: const JsonTimestamp().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$ActivityModelToJson(_ActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'classId': instance.classId,
      'title': instance.title,
      'description': instance.description,
      'points': instance.points,
      'createdAt': const JsonTimestamp().toJson(instance.createdAt),
      'updatedAt': const JsonTimestamp().toJson(instance.updatedAt),
    };

_CreateActivityRequest _$CreateActivityRequestFromJson(
        Map<String, dynamic> json) =>
    _CreateActivityRequest(
      title: json['title'] as String,
      description: json['description'] as String?,
      points: (json['points'] as num?)?.toInt(),
      courseId: json['courseId'] as String,
      classId: json['classId'] as String,
    );

Map<String, dynamic> _$CreateActivityRequestToJson(
        _CreateActivityRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'points': instance.points,
      'courseId': instance.courseId,
      'classId': instance.classId,
    };

_SimpleActivityModel _$SimpleActivityModelFromJson(Map<String, dynamic> json) =>
    _SimpleActivityModel(
      title: json['title'] as String,
      description: json['description'] as String,
      points: (json['points'] as num).toInt(),
    );

Map<String, dynamic> _$SimpleActivityModelToJson(
        _SimpleActivityModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'points': instance.points,
    };
