import 'package:flutter/cupertino.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/data/services/dtos/login_dto.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/auth/auth_user_model.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  LoginViewModel(this._authRepository);

  late final Command1 login = Command1<Unit, LoginDTO>(_login);

  AsyncResult<Unit> _login(LoginDTO request) => _authRepository
      .signInWithEmailAndPassword(request.email, request.password)
      .onSuccess(_onSuccessLogin)
      .pure(unit);

  void _onSuccessLogin(AuthUserModel user) {
    debugPrint('Login successful: ${user.toJson()}');
    notifyListeners();
  }
}
