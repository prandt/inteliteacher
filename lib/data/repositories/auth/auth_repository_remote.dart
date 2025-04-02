import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/auth/auth_user_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../execptions/app_exceptions.dart';

class AuthRepositoryRemote implements AuthRepository {
  final _auth = FirebaseAuth.instance;

  @override
  AsyncResult<AuthUserModel> getUser() async {
    final user = _auth.currentUser;
    if (user == null) {
      return Failure(Exception('User not found'));
    }
    return AuthUserModel(
      name: user.displayName,
      email: user.email,
      id: user.uid,
    ).toSuccess();
  }

  @override
  AsyncResult<bool> isSignedIn() async =>
      (_auth.currentUser != null).toSuccess();

  @override
  AsyncResult<AuthUserModel> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return AuthUserModel(
        name: userCredential.user!.displayName,
        email: userCredential.user!.email,
        id: userCredential.user!.uid,
      ).toSuccess();
    } on FirebaseAuthException catch (e) {
      return Failure(fromFirebaseAuthException(e));
    } catch (_) {
      return Failure(AuthException("Erro desconhecido ao fazer login"));
    }
  }

  @override
  AsyncResult<Unit> signOut() async {
    try {
      await _auth.signOut();
      return const Success(unit);
    } catch (_) {
      return Failure(AuthException("Erro desconhecido ao fazer logout"));
    }
  }

  @override
  AsyncResult<Unit> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Success(unit);
    } on FirebaseAuthException catch (e) {
      return Failure(fromFirebaseAuthException(e));
    } catch (_) {
      return Failure(AuthException("Erro desconhecido ao fazer cadastro"));
    }
  }

  @override
  AsyncResult<Unit> updatePassword(String newPassword) async {
    final user = _auth.currentUser;
    if (user == null) {
      return Failure(Exception('User not found'));
    }
    try {
      await user.updatePassword(newPassword);
      return const Success(unit);
    } catch (_) {
      return Failure(AuthException("Erro desconhecido ao atualizar senha"));
    }
  }
}
