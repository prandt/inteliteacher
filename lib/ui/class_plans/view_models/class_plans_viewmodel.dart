import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ClassPlansViewmodel extends ChangeNotifier {
  ClassPlansViewmodel(this._aiRepository);

  final AiRepository _aiRepository;
  String _prompt = '';
  String get prompt => _prompt;
  bool get isValid => _prompt.isNotEmpty;

  late final Command0 generateCommand = Command0(_generateClassPlan);

  void setPrompt(String prompt) {
    _prompt = prompt;
    notifyListeners();
  }

  AsyncResult<Unit> _generateClassPlan() =>
      _aiRepository.generateClassPlan(prompt: prompt).pure(unit);
}
