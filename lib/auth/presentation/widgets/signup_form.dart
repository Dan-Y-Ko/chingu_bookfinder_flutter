import 'package:chingu_bookfinder_flutter/auth/auth.dart'
    show EmailPasswordAuthService, Input;
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart'
    show GradientButton;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

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

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(18),
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
          ReactiveFormBuilder(
            form: () => form,
            builder: (context, form, child) {
              return Column(
                children: [
                  Input(
                    controller: 'name',
                    icon: Icons.person,
                    hintText: 'Name',
                    validationMessages: {
                      ValidationMessage.required: (error) => 'Name is required',
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Input(
                    controller: 'email',
                    icon: Icons.email_rounded,
                    hintText: 'Email',
                    validationMessages: {
                      ValidationMessage.required: (error) =>
                          'Email is required',
                      ValidationMessage.email: (error) =>
                          'Email must be formatted correctly',
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Input(
                    controller: 'password',
                    icon: FontAwesomeIcons.key,
                    hintText: 'Password',
                    validationMessages: {
                      ValidationMessage.required: (error) =>
                          'Password is required',
                    },
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Input(
                    controller: 'confirmPassword',
                    icon: FontAwesomeIcons.key,
                    hintText: 'Confirm Password',
                    validationMessages: {
                      ValidationMessage.mustMatch: (error) =>
                          'Password must match',
                    },
                    obscureText: true,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  ReactiveFormConsumer(
                    builder: (buildContext, form, child) {
                      return GradientButton(
                        text: 'Sign Up',
                        onPress: () {
                          form.markAllAsTouched();

                          form.valid
                              ? EmailPasswordAuthService().signUp(
                                  email: form.control('email').value as String,
                                  password:
                                      form.control('password').value as String,
                                  displayName:
                                      form.control('name').value as String,
                                )
                              : ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Please fill out required fields',
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.cancel),
                                          color: Colors.white,
                                          onPressed: () {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                        },
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
