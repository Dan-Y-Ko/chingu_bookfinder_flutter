import 'package:firebase_api/firebase_api.dart';

class EmailPasswordAuthService {
  EmailPasswordAuthService({
    EmailPasswordAuth? emailPasswordAuth,
  }) : _emailPasswordAuth = emailPasswordAuth ?? EmailPasswordAuth();

  final EmailPasswordAuth _emailPasswordAuth;

  Future<void> signOut() async {
    try {
      await _emailPasswordAuth.signOut();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      await _emailPasswordAuth.signUp(
        email: email,
        password: password,
        displayName: displayName,
      );
    } catch (_) {
      rethrow;
    }
  }
}
