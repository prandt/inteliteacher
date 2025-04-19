import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

import '../../../shared/json_timestamp.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
abstract class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required String id,
    required String courseId,
    required String title,
    required String? description,
    required int? points,
    @JsonTimestamp() required DateTime createdAt,
    @JsonTimestamp() required DateTime updatedAt,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}

@freezed
abstract class CreateActivityRequest with _$CreateActivityRequest {
  const factory CreateActivityRequest({
    required String title,
    required String? description,
    required int? points,
    required String courseId,
  }) = _CreateActivityRequest;

  factory CreateActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateActivityRequestFromJson(json);
}

extension CreateActivityFactory on CreateActivityRequest {
  ActivityModel toModel() => ActivityModel(
        id: UuidV4().generate(),
        title: title,
        description: description,
        points: points,
        courseId: courseId,
        createdAt: Timestamp.now().toDate(),
        updatedAt: Timestamp.now().toDate(),
      );
}
