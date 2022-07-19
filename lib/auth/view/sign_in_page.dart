import 'package:flutter/material.dart';

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
                  print('asdasd');
                },
                child: const Text('Sign in with google'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
