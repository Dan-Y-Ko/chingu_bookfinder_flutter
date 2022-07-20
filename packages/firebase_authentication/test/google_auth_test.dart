import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_authentication/firebase_authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}

class MockFirebaseUser extends Mock implements firebase_auth.User {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {}

class MockUserCredential extends Mock implements firebase_auth.UserCredential {}

class FakeAuthCredential extends Fake implements firebase_auth.AuthCredential {}

class FakeAuthProvider extends Fake implements AuthProvider {}

void main() {
  late GoogleAuth googleAuth;
  late firebase_auth.FirebaseAuth firebaseAuth;
  late GoogleSignIn googleSignIn;

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

  setUpAll(() {
    registerFallbackValue(FakeAuthCredential());
    registerFallbackValue(FakeAuthProvider());
  });

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignIn();
    googleAuth = GoogleAuth(
      firebaseAuth: firebaseAuth,
      googleSignIn: googleSignIn,
    );
  });

  group('constructor', () {
    test('instantiates internal base api when not injected', () {
      expect(GoogleAuth(), isNotNull);
    });
  });

  group('sign in', () {
    const accessToken = 'access-token';
    const idToken = 'id-token';

    setUp(() {
      final googleSignInAuthentication = MockGoogleSignInAuthentication();
      final googleSignInAccount = MockGoogleSignInAccount();
      when(() => googleSignInAuthentication.accessToken)
          .thenReturn(accessToken);
      when(() => googleSignInAuthentication.idToken).thenReturn(idToken);
      when(() => googleSignInAccount.authentication)
          .thenAnswer((_) async => googleSignInAuthentication);
      when(() => googleSignIn.signIn())
          .thenAnswer((_) async => googleSignInAccount);
      when(() => firebaseAuth.signInWithCredential(any()))
          .thenAnswer((_) => Future.value(MockUserCredential()));
      when(() => firebaseAuth.signInWithPopup(any()))
          .thenAnswer((_) => Future.value(MockUserCredential()));
    });
    test('is called', () async {
      await googleAuth.signIn();
      verify(() => googleSignIn.signIn()).called(1);
      verify(() => firebaseAuth.signInWithCredential(any())).called(1);
    });
  });
}
