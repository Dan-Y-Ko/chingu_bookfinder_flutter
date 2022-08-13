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

  Future<void> signIn({required String email, required String password}) async {
    try {
      final user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _createUser(user.user?.uid);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return;
      }
    } catch (_) {
      return;
    }
  }

  Future<void> _createUser(String? id) async {
    await _db.collection("Users").add({
      "id": id,
    });
  }
}
