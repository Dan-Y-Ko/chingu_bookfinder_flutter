import 'package:firebase_api/firebase_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  GoogleAuth({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    FirestoreCrud? db,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _db = db ?? FirestoreCrud();

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirestoreCrud _db;

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

    final firebaseUser = await _firebaseAuth.signInWithCredential(credential);

    final user = User(
      id: firebaseUser.user!.uid,
      displayName: firebaseUser.user!.displayName!,
      email: firebaseUser.user!.email!,
      providerId: firebaseUser.user!.providerData[0].providerId,
    );

    await _db.createUser(
      id: user.id,
      displayName: user.displayName,
      email: user.email,
      providerId: user.providerId,
    );

    return user.id;
  }
}
