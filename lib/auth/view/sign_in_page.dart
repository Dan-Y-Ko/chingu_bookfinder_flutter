import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final key1 = GlobalKey();
final key2 = GlobalKey();

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool signInScreenVisible = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    void toggleSignInContainerIsVisible() {
      setState(() {
        signInScreenVisible = !signInScreenVisible;
      });
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: BlocBuilder<GoogleAuthBloc, GoogleAuthState>(
          builder: (context, state) {
            switch (state.status) {
              case GoogleAuthStatus.initial:
                return Stack(
                  children: [
                    const CustomBackground(),
                    SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: LoginContainer(
                                  key: key1,
                                  toggleSignInContainerIsVisible:
                                      toggleSignInContainerIsVisible,
                                  signInScreenVisible: signInScreenVisible,
                                ),
                              ),
                              SignUpContainer(
                                key: key2,
                                toggleSignInContainerIsVisible:
                                    toggleSignInContainerIsVisible,
                                signInScreenVisible: signInScreenVisible,
                              ),
                            ],
                          ),
                          Positioned(
                            top: height * 0.7,
                            left: 20,
                            child: const SocialLogin(),
                          ),
                          // const Positioned(
                          //   top: 640,
                          //   right: 0,
                          //   child: SocialLogin(),
                          // ),
                        ],
                      ),
                    ),
                  ],
                );
              case GoogleAuthStatus.loading:
                return const Loading();
              case GoogleAuthStatus.success:
                return const SizedBox();
              case GoogleAuthStatus.failure:
                return ErrorScreen(error: state.error);
            }
          },
        ),
      ),
    );
  }
}
