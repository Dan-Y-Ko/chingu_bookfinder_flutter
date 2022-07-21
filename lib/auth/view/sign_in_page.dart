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
              ElevatedButton(
                onPressed: () {
                  context.read<GoogleAuthBloc>().add(
                        GoogleSignInEvent(),
                      );

                  context.go('/book');
                },
                child: BlocBuilder<GoogleAuthBloc, GoogleAuthState>(
                  builder: (context, state) {
                    if (state.status == GoogleAuthStatus.loading) {
                      return const Padding(
                        padding: EdgeInsets.all(10),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
                    }

                    return const Text('Sign in with google');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
