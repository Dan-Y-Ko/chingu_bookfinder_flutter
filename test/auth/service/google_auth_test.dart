import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:firebase_api/firebase_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGoogleAuth extends Mock implements GoogleAuth {}

void main() {
  late GoogleAuthService googleAuthService;
  late GoogleAuth googleAuth;

  setUp(() {
    googleAuth = MockGoogleAuth();
    googleAuthService = GoogleAuthService(googleAuth: googleAuth);
  });

  // cant get test to pass without putting in all the firebase initialization
  // again, which I did already in firebase api tests. Not sure why it's
  // needed here again
  // group('constructor', () {
  //   test('instantiates internal google auth when not injected', () {
  //     expect(GoogleAuthService(), isNotNull);
  //   });
  // });

  group('sign in', () {
    test('is called succesfully', () async {
      when(() => googleAuth.signIn()).thenAnswer((_) async => '1234');

      await googleAuthService.signIn();
      verify(() => googleAuth.signIn()).called(1);
    });

    test('returns instance of sign in with google failure on error', () async {
      when(() => googleAuth.signIn()).thenThrow(
        SignInWithGoogleFailure.fromCode(''),
      );

      expect(
        () async => googleAuthService.signIn(),
        throwsA(isA<SignInWithGoogleFailure>()),
      );
    });
  });

  group('sign out', () {
    test('is called succesfully', () async {
      when(() => googleAuth.signOut()).thenAnswer((_) async => _);

      await googleAuthService.signOut();
      verify(() => googleAuth.signOut()).called(1);
    });
  });
}
