import 'package:inteliteacher/shared/custom_validator.dart';

class NewClassPlanValidator extends CustomValidator<NewClassPlanValidator> {
  final String courseId;
  final String classId;
  String prompt = '';
  final int maxLength = 1000;

  NewClassPlanValidator({required this.courseId, required this.classId}) {
    ruleFor((c) => c.prompt, key: 'prompt')
        .notEmpty(message: 'Campo obrigatório')
        .minLength(10, message: 'Mínimo de 10 caracteres')
        .maxLength(maxLength, message: 'Máximo de $maxLength caracteres');
  }

  void setPrompt(String value) {
    prompt = value;
    notifyListeners();
  }

  @override
  NewClassPlanValidator get entity => this;
}
