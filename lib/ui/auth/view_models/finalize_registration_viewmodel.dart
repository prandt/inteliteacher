import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class FinalizeRegistrationViewmodel extends ChangeNotifier {
  final AuthRepository _authRepository;

  String name = '';
  bool _isValid = false;
  bool get isValid => _isValid;

  FinalizeRegistrationViewmodel(this._authRepository);

  late final Command0 updateNameCommand = Command0(_action);

  AsyncResult<Unit> _action() => _authRepository.updateDisplayName(name);

  void updateName(String newName) {
    name = newName;
    notifyListeners();
  }

  String? Function(String?)? get validateName {
    _isValid = name.isNotEmpty;
    if (name.isEmpty) {
      return (value) => 'Nome não pode ser vazio';
    }
    return null;
  }
}
