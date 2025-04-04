import 'package:flutter/material.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/auth/auth_user_model.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._authRepository);

  final AuthRepository _authRepository;
  AuthUserModel? _user;
  AuthUserModel? get user => _user;

  Stream<AuthUserModel?> _getCurrentUser() async* {
    yield null;
    final result = await _authRepository.getUser();
    if (result.isSuccess()) {
      yield result.getOrNull();
    } else {
      yield null;
    }
  }

  void loadCurrentUser() {
    _getCurrentUser().listen((event) {
      _user = event;
      notifyListeners();
    });
  }
}
