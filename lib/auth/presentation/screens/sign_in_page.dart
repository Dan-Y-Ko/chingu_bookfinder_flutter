import 'package:chingu_bookfinder_flutter/auth/auth.dart'
    show
        CustomBackground,
        GoogleAuthBloc,
        GoogleAuthState,
        GoogleAuthStatus,
        LoginContainer,
        SignUpContainer,
        SocialLoginRow;
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart'
    show ErrorScreen, Loading;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final key1 = GlobalKey();
final key2 = GlobalKey();

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool signInScreenVisible = false;
  bool loginScreenVisible = true;
  final _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= height * 0.6 &&
          _scrollController.position.pixels >= height * 0.7) {
        setState(() {
          signInScreenVisible = true;
        });
      } else {
        setState(() {
          signInScreenVisible = false;
        });
      }

      if (_scrollController.position.pixels >= 1) {
        setState(() {
          loginScreenVisible = false;
        });
      } else {
        setState(() {
          loginScreenVisible = true;
        });
      }
    });

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
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
                        controller: _scrollController,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: LoginContainer(
                                    key: key1,
                                    loginScreenVisible: loginScreenVisible,
                                    signInScreenVisible: signInScreenVisible,
                                  ),
                                ),
                                SignUpContainer(
                                  key: key2,
                                  signInScreenVisible: signInScreenVisible,
                                ),
                              ],
                            ),
                            Positioned(
                              top: height * 0.7,
                              left: 20,
                              child: const SocialLoginRow(),
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
      ),
    );
  }
}
