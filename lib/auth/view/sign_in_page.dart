import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final key1 = GlobalKey();
final key2 = GlobalKey();
final key3 = GlobalKey();

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool signInScreenVisible = false;

  double? getWidgetPosition() {
    final renderBox = key3.currentContext?.findRenderObject() as RenderBox?;

    if (key3.currentContext != null) {
      final offset = renderBox?.localToGlobal(Offset.zero);

      return offset?.dy;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final position = getWidgetPosition();

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
                          if (position != null && position >= 636)
                            AnimatedPositioned(
                              curve: Curves.decelerate,
                              duration: const Duration(milliseconds: 900),
                              top: height * 0.75,
                              right: 1,
                              child: SocialLoginRow(key: key3),
                            )
                          else
                            Positioned(
                              top: height * 0.7,
                              left: 20,
                              child: SocialLoginRow(key: key3),
                            ),
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
