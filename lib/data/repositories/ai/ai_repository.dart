import 'package:result_dart/result_dart.dart';

import '../../../model/entities/class_plans/class_plan_model.dart';

abstract interface class AiRepository {
  AsyncResult<CreateClassPlanRequest> generateClassPlan({required String prompt});
}
