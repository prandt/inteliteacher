import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ProfileViewmodel extends ChangeNotifier {
  final AuthRepository _authRepository;

  ProfileViewmodel(this._authRepository);

  late final Command0 logout = Command0(_logout);

  AsyncResult<Unit> _logout() => _authRepository.signOut();
}