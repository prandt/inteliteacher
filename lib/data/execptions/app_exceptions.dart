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
  switch (e.code) {
    case 'user-not-found':
      return AuthException('Usuário não encontrado');
    case 'wrong-password':
      return AuthException('Senha incorreta');
    case 'email-already-in-use':
      return AuthException('Email já em uso');
    case 'invalid-email':
      return AuthException('Email inválido');
    case 'weak-password':
      return AuthException('Senha fraca');
    default:
      return AuthException('Erro desconhecido');
  }
}
