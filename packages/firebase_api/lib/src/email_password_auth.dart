import 'package:firebase_api/firebase_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class EmailPasswordAuth {
  EmailPasswordAuth({
    firebase_auth.FirebaseAuth? firebaseAuth,
    FirestoreCrud? db,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _db = db ?? FirestoreCrud();

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final FirestoreCrud _db;

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<User> signUp({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      final firebaseUser = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = User(
        id: firebaseUser.user!.uid,
        displayName: displayName,
        email: firebaseUser.user!.email!,
        providerId: firebaseUser.user!.providerData[0].providerId,
      );

      await _db.createUser(
        id: user.id,
        displayName: user.displayName,
        email: user.email,
        providerId: user.providerId,
      );

      return user;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw SignUpWithEmailPasswordFailure.fromCode('');
    }
  }
}
