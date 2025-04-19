import '../../shared/custom_validator.dart';

class NewPasswordValidator extends CustomValidator<NewPasswordValidator> {
  String password = '';
  String confirmPassword = '';

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  void setConfirmPassword(String value) {
    confirmPassword = value;
    notifyListeners();
  }

  NewPasswordValidator() {
    ruleFor((c) => c.password, key: 'password')
        .notEmpty(message: 'Senha obrigatória')
        .minLength(6, message: 'A senha deve ter pelo menos 6 caractees');

    ruleFor((c) => c.confirmPassword, key: 'confirmPassword')
        .notEmpty(message: 'Confirmação de senha obrigatória')
        .equalTo((c) => c.password, message: 'As senhas não coincidem');
  }

  @override
  NewPasswordValidator get entity => this;
}
