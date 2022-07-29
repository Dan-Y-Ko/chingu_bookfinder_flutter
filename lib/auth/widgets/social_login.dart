import 'dart:math';
import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 6,
      child: SizedBox(
        height: 100,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.rotate(
              angle: -pi / 6,
              child: CustomCircularButton(
                icon: const Icon(
                  FontAwesomeIcons.googlePlusG,
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                color: const Color(0xFFED5F45),
                onTap: () {
                  context.read<GoogleAuthBloc>().add(
                        GoogleSignInEvent(),
                      );

                  context.go('/book');
                },
              ),
            ),
            Transform.rotate(
              angle: -pi / 6,
              child: CustomCircularButton(
                icon: const Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                color: const Color(0xFF3F60DC),
                onTap: () {},
              ),
            ),
            Transform.rotate(
              angle: -pi / 6,
              child: CustomCircularButton(
                icon: const Icon(
                  Icons.apple,
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                color: Colors.black,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
