import 'package:flutter/material.dart';
import 'package:inteliteacher/model/entities/class/class_model.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:inteliteacher/model/use_cases/class/create_classplan_usecase.dart';
import 'package:inteliteacher/model/validators/new_class_plan_validator.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ClassPlansViewmodel extends ChangeNotifier {
  final CreateClassPlanUseCase _useCase;

  ClassPlanModel? _classPlanModel;
  ClassPlanModel? get classPlan => _classPlanModel;

  bool _isCompleted = false;
  bool get isCompleted => _isCompleted;
  bool _isCreating = false;
  bool get isCreating => _isCreating;

  ClassPlansViewmodel(this._useCase);

  late final Command2<Unit, ClassModel, NewClassPlanValidator> generateCommand =
      Command2(_generate);

  AsyncResult<Unit> _generate(
      ClassModel classModel, NewClassPlanValidator validator) {
    _isCreating = true;
    _isCompleted = false;
    notifyListeners();
    return _useCase
        .call(classModel, validator)
        .onSuccess(setClassPlan)
        .pure(unit);
  }

  void setClassPlan(ClassPlanModel? classPlan) {
    _classPlanModel = classPlan;
    if (classPlan != null) {
      _isCompleted = true;
    }
    _isCreating = false;
    notifyListeners();
  }
}
