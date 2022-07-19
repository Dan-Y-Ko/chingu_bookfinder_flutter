import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign in page'),
              ElevatedButton(
                onPressed: () {
                  context.read<GoogleAuthBloc>().add(
                        GoogleSignInRequested(),
                      );

                  context.go('/book');
                },
                child: const Text('Sign in with google'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
