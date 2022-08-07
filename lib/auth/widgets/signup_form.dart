import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController nameInputController = TextEditingController();
  final TextEditingController emailInputController = TextEditingController();
  final TextEditingController passwordInputController = TextEditingController();
  final TextEditingController passwordConfirmInputController =
      TextEditingController();

  @override
  void dispose() {
    nameInputController.dispose();
    emailInputController.dispose();
    passwordInputController.dispose();
    passwordConfirmInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(18),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 100,
              child: Image.asset('assets/images/chingu_logo.jpeg'),
            ),
            const SizedBox(
              height: 30,
            ),
            Input(
              controller: nameInputController,
              icon: Icons.person,
              hintText: 'Name',
            ),
            const SizedBox(
              height: 30,
            ),
            Input(
              controller: emailInputController,
              icon: Icons.email_rounded,
              hintText: 'Email',
            ),
            const SizedBox(
              height: 30,
            ),
            Input(
              controller: passwordInputController,
              icon: FontAwesomeIcons.key,
              hintText: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            Input(
              controller: passwordConfirmInputController,
              icon: FontAwesomeIcons.key,
              hintText: 'Confirm Password',
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const GradientButton(text: 'Sign Up'),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}
