import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/auth/auth_user_model.dart';

import '../../execptions/app_exceptions.dart';

class AuthRepositoryRemote implements AuthRepository {
  final _auth = FirebaseAuth.instance;

  @override
  Future<AuthUserModel> getUser() async {
    final user = _auth.currentUser;
    if (user == null) {
      throw Exception('User not found');
    }
    return AuthUserModel(
      name: user.displayName,
      email: user.email,
      id: user.uid,
    );
  }

  @override
  Future<bool> isSignedIn() async => _auth.currentUser != null;

  @override
  Future<AuthUserModel> signInWithEmailAndPassword(
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
      );
    } on FirebaseAuthException catch (e) {
      throw fromFirebaseAuthException(e);
    } catch (_) {
      throw AuthException("Erro desconhecido ao fazer login");
    }
  }

  @override
  Future<void> signOut() => _auth.signOut();

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw fromFirebaseAuthException(e);
    } catch (_) {
      throw AuthException("Erro desconhecido ao fazer cadastro");
    }
  }

  @override
  Future<void> updatePassword(String newPassword) {
    final user = _auth.currentUser;
    if (user == null) {
      throw Exception('User not found');
    }
    return user.updatePassword(newPassword);
  }
}
