import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/json_timestamp.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
abstract class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required String id,
    required String courseId,
    required String classId,
    required String title,
    required String description,
    required int points,
    @JsonTimestamp() required DateTime createdAt,
    @JsonTimestamp() required DateTime updatedAt,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}

@freezed
abstract class SimpleActivityModel with _$SimpleActivityModel {
  const factory SimpleActivityModel({
    required String title,
    required String description,
    required int points,
  }) = _SimpleActivityModel;

  factory SimpleActivityModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleActivityModelFromJson(json);
}
