import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/entities/auth/auth_user_model.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ProfileViewmodel extends ChangeNotifier {
  AuthUserModel? _user;
  AuthUserModel? get user => _user;

  final AuthRepository _authRepository;

  ProfileViewmodel(this._authRepository);

  late final Command0 getUserCommand = Command0(_getUser);
  late final Command1<Unit, String> updateDisplayNameCommand =
      Command1(_updateDisplayName);
  late final Command1<Unit, String> updatePasswordCommand =
      Command1(_updatePassword);

  AsyncResult<Unit> _getUser() =>
      _authRepository.getUser().onSuccess(_setUser).pure(unit);

  void _setUser(AuthUserModel user) {
    _user = user;
    notifyListeners();
  }

  AsyncResult<Unit> _updateDisplayName(String name) => _authRepository
      .updateDisplayName(name)
      .onSuccess(_updateUserName)
      .pure(unit);

  void _updateUserName(String name) {
    _user = _user?.copyWith(name: name);
    notifyListeners();
  }

  AsyncResult<Unit> _updatePassword(String password) =>
      _authRepository.updatePassword(password);
}
