class SignInWithGoogleFailure implements Exception {
  final String message;

  const SignInWithGoogleFailure._({
    this.message = "An unknown error has occurred",
  });

  factory SignInWithGoogleFailure.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return const SignInWithGoogleFailure._(
          message: 'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return const SignInWithGoogleFailure._(
          message: 'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return const SignInWithGoogleFailure._(
          message: 'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return const SignInWithGoogleFailure._(
          message:
              'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const SignInWithGoogleFailure._(
          message: 'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const SignInWithGoogleFailure._(
          message: 'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return const SignInWithGoogleFailure._(
          message: 'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return const SignInWithGoogleFailure._(
          message: 'The credential verification ID received is invalid.',
        );
      default:
        return const SignInWithGoogleFailure._();
    }
  }
}

class SignOutFailure implements Exception {}
