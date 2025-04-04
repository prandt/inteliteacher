import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/auth/auth_user_model.dart';
import 'package:result_dart/result_dart.dart';

import '../../execptions/app_exceptions.dart';

class AuthRepositoryRemote implements AuthRepository {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

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
      final user = AuthUserModel(
        name: userCredential.user!.displayName,
        email: userCredential.user!.email,
        id: userCredential.user!.uid,
      );
      return Success(user);
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

  @override
  AsyncResult<bool> hasCompletedRegistration() async {
    try {
      final snapshot = await userRef.get();
      return snapshot.exists.toSuccess();
    } catch (_) {
      return Success(false);
    }
  }

  DocumentReference<AuthUserModel> get userRef => _firestore
      .collection('users')
      .doc(_auth.currentUser?.uid)
      .withConverter<AuthUserModel>(
          fromFirestore: (snapshot, _) =>
              AuthUserModel.fromJson(snapshot.data()!),
          toFirestore: (user, _) => user.toJson());

  @override
  AsyncResult<Unit> updateDisplayName(String name) async {
    if (name.isEmpty) {
      return Failure(AuthException("Nome não pode ser vazio"));
    }
    if (_auth.currentUser == null) {
      return Failure(AuthException('User not found'));
    }
    try {
      final user = AuthUserModel(
          id: _auth.currentUser!.uid,
          email: _auth.currentUser!.email,
          name: name);
      await userRef.set(user);
      await _auth.currentUser?.updateDisplayName(user.name);
      return const Success(unit);
    } catch (_) {
      return Failure(AuthException("Erro desconhecido ao atualizar usuário"));
    }
  }
}
