import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            SingleChildScrollView(
              // controller: controller,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: const [
                    LoginContainer(),
                    SocialLogin(),
                    SignUpContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
