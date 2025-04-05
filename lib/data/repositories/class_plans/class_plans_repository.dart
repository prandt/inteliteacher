import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class ClassPlansRepository {
  AsyncResult<List<SimpleClassPlanResponse>> list();
  AsyncResult<SimpleClassPlanResponse> save(CreateClassPlanRequest model);
  AsyncResult<Unit> getById(String id);
}
