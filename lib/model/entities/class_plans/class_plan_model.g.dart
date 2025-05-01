// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassPlanModel _$ClassPlanModelFromJson(Map<String, dynamic> json) =>
    _ClassPlanModel(
      title: json['title'] as String,
      objective: json['objective'] as String?,
      targetAudience: json['targetAudience'] as String?,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      methodology: json['methodology'] as String?,
      content:
          (json['content'] as List<dynamic>?)?.map((e) => e as String).toList(),
      activities: (json['activities'] as List<dynamic>?)
          ?.map((e) => SimpleActivityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassPlanModelToJson(_ClassPlanModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'objective': instance.objective,
      'targetAudience': instance.targetAudience,
      'duration': instance.duration,
      'resources': instance.resources,
      'methodology': instance.methodology,
      'content': instance.content,
    };
