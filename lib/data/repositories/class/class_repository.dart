import 'package:result_dart/result_dart.dart';

import '../../../model/entities/activity/activity_model.dart';
import '../../../model/entities/class/class_model.dart';
import '../../../model/entities/class_plans/class_plan_model.dart';

abstract interface class ClassRepository {
  AsyncResult<List<ClassModel>> list(String courseId);
  AsyncResult<ClassModel> create(CreateClassRequest request);
  AsyncResult<ClassModel> get({
    required String courseId,
    required String classId,
  });
  AsyncResult<List<ActivityModel>> listActivities(ClassModel model);
  AsyncResult<List<ActivityModel>> addActivities(
      ClassModel model, List<SimpleActivityModel> request);
  AsyncResult<ClassPlanModel> updateClassPlan(
      ClassModel classModel, ClassPlanModel classPlan);
  Stream<List<ActivityModel>> listenActivities(ClassModel model);
}
