import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_api/firebase_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  GoogleAuth({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    FirebaseFirestore? db,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _db = db ?? FirebaseFirestore.instance;

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _db;

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn() async {
    try {
      return await _callGoogleSignIn();
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignInWithGoogleFailure.fromCode(e.code);
    } catch (_) {
      SignInWithGoogleFailure.fromCode('');

      return null;
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
    final QuerySnapshot result =
        await _db.collection('Users').where('id', isEqualTo: id).get();

    if (result.docs.isEmpty) {
      await _db.collection("Users").add({
        "id": id,
      });
    }
  }
}
