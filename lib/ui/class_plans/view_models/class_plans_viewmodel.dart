import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:inteliteacher/data/repositories/class_plans/class_plans_repository.dart';
import 'package:inteliteacher/model/entities/class_plans/class_plan_model.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ClassPlansViewmodel extends ChangeNotifier {
  final AiRepository _aiRepository;
  final ClassPlansRepository _classPlansRepository;
  String _prompt = '';
  String get prompt => _prompt;
  bool get isValid => _prompt.isNotEmpty;
  List<SimpleClassPlanResponse> _classPlans = [];
  List<SimpleClassPlanResponse> get classPlans => _classPlans;

  ClassPlansViewmodel(this._aiRepository, this._classPlansRepository);

  // Here we define the commands that will be used to interact with the view model
  late final Command0 listCommand = Command0(_list);
  late final Command0 generateCommand = Command0(_generateClassPlan);

  void setPrompt(String prompt) {
    _prompt = prompt;
    notifyListeners();
  }

  AsyncResult<Unit> _generateClassPlan() => _aiRepository
      .generateClassPlan(prompt: prompt)
      .flatMap(_classPlansRepository.save)
      .onSuccess(_onClassPlanSaved)
      .pure(unit);

  void _onClassPlanSaved(SimpleClassPlanResponse classPlan) {
    _classPlans.insert(0, classPlan);
    notifyListeners();
  }

  AsyncResult<Unit> _list() =>
      _classPlansRepository.list().onSuccess(_onClassPlansLoaded).pure(unit);

  void _onClassPlansLoaded(List<SimpleClassPlanResponse> classPlans) {
    _classPlans = classPlans;
    notifyListeners();
  }
}
