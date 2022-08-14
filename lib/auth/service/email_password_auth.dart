import 'package:firebase_api/firebase_api.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EmailPasswordAuthService {
  EmailPasswordAuthService({
    EmailPasswordAuth? emailPasswordAuth,
  }) : _emailPasswordAuth = emailPasswordAuth ?? EmailPasswordAuth();

  final EmailPasswordAuth _emailPasswordAuth;

  final form = fb.group(
    {
      'name': [Validators.required],
      'email': [Validators.required, Validators.email],
      'password': [Validators.required],
      'confirmPassword': [Validators.required],
    },
    [
      Validators.mustMatch('password', 'confirmPassword'),
    ],
  );

  Future<void> signOut() async {
    try {
      await _emailPasswordAuth.signOut();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _emailPasswordAuth.signIn(email: email, password: password);
    } catch (_) {
      rethrow;
    }
  }
}
