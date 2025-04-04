import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

import '../../../model/validators/register_validator.dart';

class RegisterViewModel {
  final AuthRepository _authRepository;

  RegisterViewModel(this._authRepository);

  late final Command1<Unit, RegisterValidator> registerCommand =
      Command1(_register);

  AsyncResult<Unit> _register(RegisterValidator validator) => _authRepository
      .signUpWithEmailAndPassword(validator.email, validator.password);
}
