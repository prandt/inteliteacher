import 'package:inteliteacher/shared/cusomt_validator.dart';

class LoginValidator extends CustomValidator<LoginValidator> {
  String email = "";
  String password = "";

  LoginValidator() {
    ruleFor((login) => login.email, key: 'email')
        .notEmpty(message: 'E-mail obrigatório')
        .validEmail(message: 'Formato de e-mail inválido');

    ruleFor((login) => login.password, key: 'password')
        .notEmpty(message: 'Senha obrigatória')
        .minLength(6, message: 'A senha deve ter pelo menos 6 caracteres');
  }

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  @override
  LoginValidator get entity => this;
}

