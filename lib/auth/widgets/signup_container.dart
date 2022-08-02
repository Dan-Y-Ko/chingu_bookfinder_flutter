import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpContainer extends StatelessWidget {
  const SignUpContainer({
    Key? key,
    required this.signInScreenVisible,
  }) : super(key: key);

  final bool signInScreenVisible;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height * .85,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18,
          right: 18,
          bottom: 10,
          top: 2,
        ),
        child: CustomPaint(
          painter: CustomSignUpContainerPainter(),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: SignUpForm(),
              ),
              Positioned(
                top: 14,
                left: 3,
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
                    signInScreenVisible == false
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

class CustomSignUpContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height * .96)
      ..quadraticBezierTo(
        0,
        size.height,
        size.width * 0.076,
        size.height,
      )
      ..lineTo(size.width * 0.92, size.height)
      ..quadraticBezierTo(
        size.width,
        size.height,
        size.width,
        size.height * 0.96,
      )
      ..lineTo(size.width, size.height * 0.3)
      ..quadraticBezierTo(
        size.width,
        size.height * 0.28,
        size.width * 0.95,
        size.height * 0.265,
      )
      ..lineTo(size.width * 0.05, size.height * 0.011)
      ..quadraticBezierTo(0, 0, 0, size.height * 0.027);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
