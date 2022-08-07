import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_api/firebase_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';

void main() {
  late GoogleAuth googleAuth;
  late firebase_auth.FirebaseAuth firebaseAuth;
  late firebase_auth.FirebaseAuth authWithException;
  late GoogleSignIn googleSignIn;
  late FirebaseFirestore instance;

  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFirebase.channel.setMockMethodCallHandler((call) async {
    if (call.method == 'Firebase#initializeCore') {
      return [
        {
          'name': defaultFirebaseAppName,
          'options': {
            'apiKey': '123',
            'appId': '123',
            'messagingSenderId': '123',
            'projectId': '123',
          },
          'pluginConstants': const <String, String>{},
        }
      ];
    }

    if (call.method == 'Firebase#initializeApp') {
      final arguments = call.arguments as Map<String, dynamic>;
      return <String, dynamic>{
        'name': arguments['appName'],
        'options': arguments['options'],
        'pluginConstants': const <String, String>{},
      };
    }

    return null;
  });

  TestWidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  setUp(() {
    instance = FakeFirebaseFirestore();
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignIn();
    googleAuth = GoogleAuth(
      firebaseAuth: firebaseAuth,
      googleSignIn: googleSignIn,
      db: instance,
    );
  });

  group('constructor', () {
    test('instantiates internal firebase dependencies when not injected', () {
      expect(GoogleAuth(), isNotNull);
    });
  });

  group('sign in', () {
    firebase_auth.AuthCredential? credential;

    setUp(() async {
      final signinAccount = await googleSignIn.signIn();
      final fakeGoogleAuth = await signinAccount?.authentication;
      credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: fakeGoogleAuth?.accessToken,
        idToken: fakeGoogleAuth?.idToken,
      );
    });

    test('succeeds', () async {
      await firebaseAuth.signInWithCredential(credential!);

      expectLater(
        await googleAuth.signIn(),
        'some_random_id',
      );
    });

    test('throws exception on error', () async {
      authWithException = MockFirebaseAuth(
        authExceptions: AuthExceptions(
          signInWithCredential:
              firebase_auth.FirebaseAuthException(code: 'invalid-credential'),
        ),
      );

      final googleAuthWithError = GoogleAuth(
        firebaseAuth: authWithException,
        googleSignIn: googleSignIn,
      );

      expect(
        () async => await googleAuthWithError.signIn(),
        throwsA(isA<SignInWithGoogleFailure>()),
      );
    });
  });

  group('sign out', () {
    test('succeeds', () async {
      await googleAuth.signOut();

      expect(
        firebaseAuth.signOut(),
        completes,
      );
    });
  });
}
