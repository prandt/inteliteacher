import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

import '../../../data/repositories/auth/auth_repository.dart';

class LogoutViewmodel {
  final AuthRepository _authRepository;

  LogoutViewmodel(this._authRepository);

  late final Command0 logout = Command0(_logout);

  AsyncResult<Unit> _logout() => _authRepository.signOut();
}
