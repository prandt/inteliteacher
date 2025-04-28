import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

import '../../../shared/json_timestamp.dart';

part 'class_plan_model.freezed.dart';
part 'class_plan_model.g.dart';

@freezed
abstract class ClassPlanModel with _$ClassPlanModel {
  const factory ClassPlanModel({
    required String id,
    required String title,
    required String? objective,
    required String? targetAudience,
    required String duration,
    required List<String?>? resources,
    required String? methodology,
    required List<String>? content,
    required List<String>? activities,
    required String? evaluation,
    required String? notes,
    @JsonTimestamp() required DateTime createdAt,
    @JsonTimestamp() required DateTime updatedAt,
  }) = _ClassPlanModel;

  factory ClassPlanModel.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanModelFromJson(json);
}

@freezed
abstract class CreateClassPlanRequest with _$CreateClassPlanRequest {
  const factory CreateClassPlanRequest({
    required String title,
    required String? objective,
    required String? targetAudience,
    required String duration,
    required List<String?>? resources,
    required String? methodology,
    required List<String>? content,
    required List<String>? activities,
    required String? evaluation,
    required String? notes,
    @Default('') String courseId,
    @Default('') String classId,
  }) = _CreateClassPlanRequest;

  factory CreateClassPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateClassPlanRequestFromJson(json);
}

extension CreateClassPlanFactory on CreateClassPlanRequest {
  /// This a factory method to build a [ClassPlanModel] from a [CreateClassPlanRequest].
  ClassPlanModel toModel() {
    return ClassPlanModel(
      id: UuidV4().generate(),
      title: title,
      objective: objective,
      targetAudience: targetAudience,
      duration: duration,
      resources: resources,
      methodology: methodology,
      content: content,
      activities: activities,
      evaluation: evaluation,
      notes: notes,
      createdAt: Timestamp.now().toDate(),
      updatedAt: Timestamp.now().toDate(),
    );
  }
}
