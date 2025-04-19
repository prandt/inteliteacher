import 'package:inteliteacher/model/entities/student/student_model.dart';

import '../../shared/custom_validator.dart';

class CreateStudentValidator extends CustomValidator<CreateStudentValidator> {
  String email = "";
  String name = "";

  CreateStudentValidator() {
    ruleFor((login) => login.email, key: 'email')
        .notEmpty(message: 'E-mail obrigatório')
        .validEmail(message: 'Formato de e-mail inválido');

    ruleFor((login) => login.name, key: 'name')
        .notEmpty(message: 'Nome obrigatório');
  }

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setName(String value) {
    name = value;
    notifyListeners();
  }

  CreateStudentRequest toRequest(String courseId) {
    return CreateStudentRequest(
      email: email,
      name: name,
      courseId: courseId,
    );
  }

  @override
  CreateStudentValidator get entity => this;
}
