import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      // controller: controller,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
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
