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

  CollectionReference<User> get passwordAuthRef =>
      _db.collection('Users').withConverter<User>(
            fromFirestore: (snapshot, _) => User.fromMap(snapshot.data()!),
            toFirestore: (auth, _) => auth.toMap(),
          );

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

      await _createUser(
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

  Future<void> _createUser({
    required String id,
    required String displayName,
    required String email,
    required String providerId,
  }) async {
    await passwordAuthRef.add(
      User(
        id: id,
        displayName: displayName,
        email: email,
        providerId: providerId,
      ),
    );
  }
}
