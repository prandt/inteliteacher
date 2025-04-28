import 'package:result_dart/result_dart.dart';

import '../../../model/entities/class_plans/class_plan_model.dart';
import '../../../model/validators/new_class_plan_validator.dart';

abstract interface class AiRepository {
  AsyncResult<CreateClassPlanRequest> generateClassPlan(
      NewClassPlanValidator validator);
}
