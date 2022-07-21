import 'package:firebase_repository/firebase_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SignInWithGoogleFailure', () {
    const firebaseErrorCases = [
      'account-exists-with-different-credential',
      'invalid-credential',
      'operation-not-allowed',
      'user-disabled',
      'user-not-found',
      'wrong-password',
      'invalid-verification-code',
      'invalid-verification-id',
    ];

    for (String input in firebaseErrorCases) {
      test("all error cases covered", () {
        expect(SignInWithGoogleFailure.fromCode(input),
            isA<SignInWithGoogleFailure>());
      });
    }
  });
}
