import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class ClassPlansRepository {
  AsyncResult<List<ClassPlanModel>> list();
  AsyncResult<ClassPlanModel> save(CreateClassPlanRequest model);
  AsyncResult<ClassPlanModel> getById(String id);
}
