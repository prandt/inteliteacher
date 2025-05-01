import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inteliteacher/model/entities/activity/activity_model.dart';

part 'class_plan_model.freezed.dart';
part 'class_plan_model.g.dart';

@freezed
abstract class ClassPlanModel with _$ClassPlanModel {
  const factory ClassPlanModel({
    required String title,
    required String? objective,
    required String? targetAudience,
    @Default(0) int? duration,
    required List<String?>? resources,
    required String? methodology,
    required List<String>? content,
    @JsonKey(includeToJson: false)
    required List<SimpleActivityModel>? activities,
  }) = _ClassPlanModel;

  factory ClassPlanModel.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanModelFromJson(json);
}
