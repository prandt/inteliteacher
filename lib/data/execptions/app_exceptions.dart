import 'package:firebase_auth/firebase_auth.dart';

abstract class AppExceptions implements Exception {
  final String message;
  final StackTrace? stackTrace;

  AppExceptions(this.message, [this.stackTrace]);

  @override
  String toString() => "AppExceptions<$runtimeType>: $message || $stackTrace";
}

class AuthException extends AppExceptions {
  AuthException(super.message, [super.stackTrace]);
}

AppExceptions fromFirebaseAuthException(FirebaseAuthException e) {
  final message = switch (e.code) {
    'user-not-found' => 'Usuário não encontrado',
    'wrong-password' => 'Senha incorreta',
    'email-already-in-use' => 'Email já em uso',
    'invalid-email' => 'Email inválido',
    'weak-password' => 'Senha fraca',
    'invalid-credential' => 'Credenciais inválidas',
    _ => 'Erro desconhecido',
  };
  return AuthException(message);
}

class AiException extends AppExceptions {
  AiException(super.message, [super.stackTrace]);
}

class ClassPlansException extends AppExceptions {
  ClassPlansException(super.message, [super.stackTrace]);
}

class CourseException extends AppExceptions {
  CourseException(super.message, [super.stackTrace]);
}