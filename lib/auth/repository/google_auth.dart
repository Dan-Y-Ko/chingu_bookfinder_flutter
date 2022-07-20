import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/firebase_authentication.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthRepository {
  GoogleAuthRepository({GoogleAuth? googleAuth})
      : _googleAuth = googleAuth ?? GoogleAuth();

  final GoogleAuth _googleAuth;

  Future<void> signOut() async {
    try {
      await _googleAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserCredential> signIn() async {
    return _googleAuth.signIn();
  }
}
