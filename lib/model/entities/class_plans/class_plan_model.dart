import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_plan_model.freezed.dart';
part 'class_plan_model.g.dart';

@freezed
abstract class ClassPlanModel with _$ClassPlanModel {
  const factory ClassPlanModel({
    required String id,
    required String title,
    required String objective,
    required String targetAudience,
    required String duration,
    required List<String> resources,
    required String methodology,
    required List<String> content,
    required List<String> activities,
    required String evaluation,
    required String notes,
  }) = _ClassPlanModel;

  factory ClassPlanModel.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanModelFromJson(json);
}
