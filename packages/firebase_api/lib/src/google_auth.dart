import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_api/firebase_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  GoogleAuth({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (_) {
      throw SignOutFailure();
    }
  }

  Future<String?> signIn() async {
    try {
      return await _callGoogleSignIn();
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignInWithGoogleFailure.fromCode(e.code);
    }
  }

  Future<String?> _callGoogleSignIn() async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = firebase_auth.GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final user = await _firebaseAuth.signInWithCredential(credential);

    await _createUser(user.user?.uid);

    return user.user?.uid;
  }

  Future<void> _createUser(String? id) async {
    try {
      final db = FirebaseFirestore.instance;

      final QuerySnapshot result = await FirebaseFirestore.instance
          .collection('Users')
          .where('id', isEqualTo: id)
          .get();

      if (result.docs.isEmpty) {
        await db.collection("Users").add({
          "id": id,
        });
      }

      return;
    } catch (e) {
      throw Exception('Error');
    }
  }
}
