import 'package:flutter/material.dart';
import 'package:lucid_validation/lucid_validation.dart';

class LoginDTO extends ChangeNotifier {
  String _email = "";
  String _password = "";

  String get email => _email;
  String get password => _password;

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}

class LoginValidator extends LucidValidator<LoginDTO> {
  LoginValidator() {
    ruleFor((login) => login.email, key: 'email')
        .notEmpty(message: 'E-mail obrigatório')
        .validEmail(message: 'Formato de e-mail inválido');

    ruleFor((login) => login.password, key: 'password')
        .notEmpty(message: 'Senha obrigatória')
        .minLength(6, message: 'A senha deve ter pelo menos 6 caracteres');
  }
}
