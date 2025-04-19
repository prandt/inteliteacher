// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentModel _$StudentModelFromJson(Map<String, dynamic> json) =>
    _StudentModel(
      id: json['id'] as String,
      name: json['name'] as String,
      courseId: json['courseId'] as String,
      email: json['email'] as String,
      createdAt: const JsonTimestamp().fromJson(json['createdAt'] as Timestamp),
      updatedAt: const JsonTimestamp().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$StudentModelToJson(_StudentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'courseId': instance.courseId,
      'email': instance.email,
      'createdAt': const JsonTimestamp().toJson(instance.createdAt),
      'updatedAt': const JsonTimestamp().toJson(instance.updatedAt),
    };
