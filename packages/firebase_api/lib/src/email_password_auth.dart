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
  }) async {
    try {
      final user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _createUser(
        id: user.user!.uid,
        createdAt: user.user!.metadata.creationTime!,
      );

      return user.user!.uid;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignInWithEmailPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw SignInWithEmailPasswordFailure.fromCode('');
    }
  }

  Future<void> _createUser({
    required String id,
    required DateTime createdAt,
  }) async {
    await _db.collection("Users").add({
      "id": id,
      "createdAt": createdAt,
    });
  }
}
