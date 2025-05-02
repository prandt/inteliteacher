// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityResponseModel _$ActivityResponseModelFromJson(
        Map<String, dynamic> json) =>
    _ActivityResponseModel(
      id: json['id'] as String,
      studentId: json['studentId'] as String,
      studentName: json['studentName'] as String,
      courseId: json['courseId'] as String,
      classId: json['classId'] as String,
      points: (json['points'] as num?)?.toInt(),
      createdAt: const JsonTimestamp().fromJson(json['createdAt'] as Timestamp),
      updatedAt: const JsonTimestamp().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$ActivityResponseModelToJson(
        _ActivityResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'studentName': instance.studentName,
      'courseId': instance.courseId,
      'classId': instance.classId,
      'points': instance.points,
      'createdAt': const JsonTimestamp().toJson(instance.createdAt),
      'updatedAt': const JsonTimestamp().toJson(instance.updatedAt),
    };
