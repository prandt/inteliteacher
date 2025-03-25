import '../../../model/auth/auth_user_model.dart';

export 'auth_repository_remote.dart';

abstract interface class AuthRepository {
  Future<AuthUserModel> signInWithEmailAndPassword(String email, String password);
  Future<void> signUpWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<bool> isSignedIn();
  Future<AuthUserModel> getUser();
  Future<void> updatePassword(String password);
}