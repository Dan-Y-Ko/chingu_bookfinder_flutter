import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:test/test.dart';

void main() {
  GoogleAuthState createSubject({
    GoogleAuthStatus? status,
    bool? isAuthenticated,
    String? error,
  }) {
    return GoogleAuthState(
      status: status ?? GoogleAuthStatus.initial,
      isAuthenticated: isAuthenticated ?? false,
      error: error ?? '',
    );
  }

  test('supports value equality', () {
    expect(
      createSubject(),
      equals(
        createSubject(),
      ),
    );
  });

  test('Props are correct', () {
    expect(
      createSubject(
        status: GoogleAuthStatus.initial,
        isAuthenticated: true,
        error: '',
      ).props,
      equals([
        GoogleAuthStatus.initial,
        true,
        '',
      ]),
    );
  });

  group('copyWith', () {
    test('returns the same object if no arguments are provided', () {
      expect(
        createSubject().copyWith(),
        equals(
          createSubject(),
        ),
      );
    });
  });
}
