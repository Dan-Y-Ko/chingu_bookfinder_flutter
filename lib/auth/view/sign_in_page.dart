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
              BlocBuilder<GoogleAuthBloc, GoogleAuthState>(
                builder: (context, state) {
                  if (state.status == GoogleAuthStatus.loading) {
                    return const CircularProgressIndicator();
                  }

                  return const SizedBox();
                },
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<GoogleAuthBloc>().add(
                        GoogleSignInEvent(),
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
