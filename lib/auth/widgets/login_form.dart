import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        EmailInput(
          controller: emailInputController,
          icon: Icons.email_rounded,
          hintText: 'Email',
        ),
        EmailInput(
          controller: passwordInputController,
          icon: Icons.key,
          hintText: 'Password',
        ),
        const SizedBox(
          height: 20,
        ),
        const GradientButton(text: 'Login'),
      ],
    );
  }
}
