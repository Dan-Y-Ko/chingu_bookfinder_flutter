import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_api/firebase_api.dart';

class FirestoreCrud {
  FirestoreCrud({
    FirebaseFirestore? db,
  }) : _db = db ?? FirebaseFirestore.instance;

  final FirebaseFirestore _db;

  CollectionReference<User> _getPasswordAuthRef() {
    return _db.collection('Users').withConverter<User>(
          fromFirestore: (snapshot, _) => User.fromMap(snapshot.data()!),
          toFirestore: (auth, _) => auth.toMap(),
        );
  }

  Future<void> createUser({
    required String id,
    required String displayName,
    required String email,
    required String providerId,
  }) async {
    final userRef = _getPasswordAuthRef();

    await userRef.add(
      User(
        id: id,
        displayName: displayName,
        email: email,
        providerId: providerId,
      ),
    );
  }
}
