import 'dart:math';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 6,
      child: Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.rotate(
              angle: -pi / 6,
              child: const CustomCircularButton(
                icon: Icon(
                  FontAwesomeIcons.googlePlusG,
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                color: Color(0xFFED5F45),
              ),
            ),
            Transform.rotate(
              angle: -pi / 6,
              child: const CustomCircularButton(
                icon: Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                color: Color(0xFF3F60DC),
              ),
            ),
            Transform.rotate(
              angle: -pi / 6,
              child: const CustomCircularButton(
                icon: Icon(
                  Icons.apple,
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
