import 'package:flutter/cupertino.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/auth/validators/login_validator.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/auth/auth_user_model.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  LoginViewModel(this._authRepository);

  late final Command1 login = Command1<AuthUserModel, LoginValidator>(_login);

  AsyncResult<AuthUserModel> _login(LoginValidator validator) => _authRepository
      .signInWithEmailAndPassword(validator.email, validator.password);

}
