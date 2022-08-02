import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    Key? key,
    required this.signInScreenVisible,
    required this.loginScreenVisible,
  }) : super(key: key);

  final bool signInScreenVisible;
  final bool loginScreenVisible;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height * .75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomPaint(
          painter: CustomLoginContainerPainter(),
          child: Stack(
            children: [
              const LoginForm(),
              Positioned(
                right: 3,
                bottom: 15,
                child: CustomCircularButton(
                  icon: Icon(
                    signInScreenVisible == true
                        ? Icons.arrow_downward
                        : Icons.arrow_upward,
                    color: Colors.white,
                  ),
                  height: 30,
                  width: 30,
                  gradient: RadialGradient(
                    colors: [
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.primary,
                    ],
                  ),
                  onTap: () {
                    signInScreenVisible == false && loginScreenVisible == true
                        ? Scrollable.ensureVisible(
                            key2.currentContext!,
                            duration: const Duration(milliseconds: 500),
                          )
                        : Scrollable.ensureVisible(
                            key1.currentContext!,
                            alignment: 5,
                            duration: const Duration(milliseconds: 500),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLoginContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height * 0.68)
      ..quadraticBezierTo(
        0,
        size.height * 0.699,
        size.width * 0.05,
        size.height * 0.715,
      )
      ..lineTo(size.width * 0.92, size.height * 0.98)
      ..quadraticBezierTo(
        size.width,
        size.height,
        size.width,
        size.height * 0.95,
      )
      ..lineTo(size.width, size.height * 0.04)
      ..quadraticBezierTo(size.width, 0, size.width * 0.92, 0)
      ..lineTo(size.width * 0.07, 0)
      ..quadraticBezierTo(
        0,
        0,
        0,
        size.height * 0.04,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
