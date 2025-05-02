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
    required String studentId,
    required String studentName,
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
abstract class StudentWithResponse with _$StudentWithResponse {
  const factory StudentWithResponse({
    required StudentModel student,
    required ActivityResponseModel? activityResponse,
  }) = _StudentWithResponse;
}
