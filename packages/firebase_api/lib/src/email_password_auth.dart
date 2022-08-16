import 'package:firebase_api/firebase_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';

class EmailPasswordAuth {
  EmailPasswordAuth({
    firebase_auth.FirebaseAuth? firebaseAuth,
    FirebaseFirestore? db,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _db = db ?? FirebaseFirestore.instance;

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _db;

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String> signUp({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      final user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _createUser(
        id: user.user!.uid,
        displayName: displayName,
        email: user.user!.email!,
        providerId: user.user!.providerData[0].providerId,
      );

      return user.user!.uid;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw SignUpWithEmailPasswordFailure.fromCode('');
    }
  }

  Future<void> _createUser({
    required String id,
    required String displayName,
    required String email,
    required String providerId,
  }) async {
    await _db.collection("Users").add({
      "id": id,
      "displayName": displayName,
      "email": email,
      "providerId": providerId,
    });
  }
}
