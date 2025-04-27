import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';
import '../../../shared/json_timestamp.dart';
import '../class_plans/class_plan_model.dart';

part 'class_model.freezed.dart';
part 'class_model.g.dart';

@freezed
sealed class ClassModel with _$ClassModel {
  const factory ClassModel({
    required String id,
    required String courseId,
    required String title,
    required String? description,
    required ClassPlanModel? classPlan,
    @JsonTimestamp() required DateTime startAt,
    @JsonTimestamp() required DateTime createdAt,
    @JsonTimestamp() required DateTime updatedAt,
  }) = _ClassModel;

  factory ClassModel.fromJson(Map<String, Object?> json) =>
      _$ClassModelFromJson(json);

}

@freezed
sealed class CreateClassRequest with _$CreateClassRequest {
  const factory CreateClassRequest({
    required String courseId,
    required String title,
    required String? description,
    @JsonTimestamp() required DateTime startAt,
  }) = _CreateClassRequest;

  factory CreateClassRequest.fromJson(Map<String, Object?> json) =>
      _$CreateClassRequestFromJson(json);
}

extension CreateClassRequestFactory on CreateClassRequest {
  ClassModel toModel() {
    return ClassModel(
      id: UuidV4().generate(),
      courseId: courseId,
      title: title,
      description: description,
      classPlan: null,
      startAt: startAt,
      createdAt: Timestamp.now().toDate(),
      updatedAt: Timestamp.now().toDate(),
    );
  }
}