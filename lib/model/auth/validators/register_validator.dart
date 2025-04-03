import '../../../shared/cusomt_validator.dart';

class RegisterValidator extends CustomValidator<RegisterValidator> {
  String email = '';
  String password = '';
  String confirmPassword = '';

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  void setConfirmPassword(String value) {
    confirmPassword = value;
    notifyListeners();
  }

  RegisterValidator() {
    ruleFor((c) => c.email, key: 'email')
        .notEmpty(message: 'E-mail obrigatório')
        .validEmail(message: 'Formato de e-mail inválido');

    ruleFor((c) => c.password, key: 'password')
        .notEmpty(message: 'Senha obrigatória')
        .minLength(6, message: 'A senha deve ter pelo menos 6 caractees');

    ruleFor((c) => c.confirmPassword, key: 'confirmPassword')
        .notEmpty(message: 'Confirmação de senha obrigatória')
        .equalTo((c) => c.password, message: 'As senhas não coincidem');
  }

  @override
  RegisterValidator get entity => this;
}
