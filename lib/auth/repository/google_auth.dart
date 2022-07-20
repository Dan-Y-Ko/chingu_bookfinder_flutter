import 'package:firebase_authentication/firebase_authentication.dart';

class GoogleAuthRepository {
  GoogleAuthRepository({GoogleAuth? googleAuth})
      : _googleAuth = googleAuth ?? GoogleAuth();

  final GoogleAuth _googleAuth;

  Future<void> signOut() async {
    try {
      await _googleAuth.signOut();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signIn() async {
    try {
      await _googleAuth.signIn();
    } catch (e) {
      rethrow;
    }
  }
}
