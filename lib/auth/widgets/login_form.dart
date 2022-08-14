// import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailInputController = TextEditingController();
  final TextEditingController passwordInputController = TextEditingController();

  @override
  void dispose() {
    emailInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: SizedBox(
              height: 200,
              child: Image.asset('assets/images/chingu_logo.jpeg'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // Input(
          //   controller: emailInputController,
          //   icon: Icons.email_rounded,
          //   hintText: 'Email',
          // ),
          const SizedBox(
            height: 30,
          ),
          // Input(
          //   controller: passwordInputController,
          //   icon: FontAwesomeIcons.key,
          //   hintText: 'Password',
          // ),
          const SizedBox(
            height: 30,
          ),
          const GradientButton(text: 'Login'),
        ],
      ),
    );
  }
}
