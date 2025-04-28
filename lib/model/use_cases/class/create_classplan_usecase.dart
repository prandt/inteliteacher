import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:inteliteacher/model/validators/new_class_plan_validator.dart';
import 'package:result_dart/result_dart.dart';

class CreateClassPlanUseCase {
  final AiRepository _aiRepository;
  final ClassRepository _classRepository;

  CreateClassPlanUseCase(this._aiRepository, this._classRepository);

  AsyncResult<ClassPlanModel> call(NewClassPlanValidator validator) =>
      _aiRepository
          .generateClassPlan(validator)
          .flatMap(_classRepository.updateClassPlan);
}
