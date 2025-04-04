import 'package:result_dart/result_dart.dart';
import '../../../model/entities/auth/auth_user_model.dart';
export 'auth_repository_remote.dart';

abstract interface class AuthRepository {
  AsyncResult<AuthUserModel> signInWithEmailAndPassword(
      String email, String password);
  AsyncResult<Unit> signUpWithEmailAndPassword(String email, String password);
  AsyncResult<Unit> signOut();
  AsyncResult<bool> isSignedIn();
  AsyncResult<AuthUserModel> getUser();
  AsyncResult<Unit> updatePassword(String password);
  // Always returns Success but true if the user is already registered
  // and false if the user is not registered
  AsyncResult<bool> hasCompletedRegistration();
  AsyncResult<Unit> updateDisplayName(String name);
}
