
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/json_timestamp.dart';
import '../student/student_model.dart';

part 'activity_response_model.freezed.dart';
part 'activity_response_model.g.dart';

@freezed
abstract class ActivityResponseModel with _$ActivityResponseModel {
  const factory ActivityResponseModel({
    required String id,
    required StudentModel student,
    required String courseId,
    required String classId,
    required int? points,
    @JsonTimestamp() required DateTime createdAt,
    @JsonTimestamp() required DateTime updatedAt,
  }) = _ActivityResponseModel;

  factory ActivityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseModelFromJson(json);
}

@freezed
abstract class CreateActivityResponseRequest with _$CreateActivityResponseRequest {
  const factory CreateActivityResponseRequest({
    required StudentModel student,
    required String courseId,
    required String classId,
    required int? points,
  }) = _CreateActivityResponseRequest;

  factory CreateActivityResponseRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateActivityResponseRequestFromJson(json);
}