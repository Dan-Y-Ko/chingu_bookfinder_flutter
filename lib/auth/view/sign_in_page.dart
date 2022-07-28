import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: CustomPaint(
          size: Size(width, height),
          painter: CustomBackground(),
        ),
      ),
    );
  }
}

class CustomBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFF23d9ac),
          Color(0xFF00ff08),
        ],
      ).createShader(rect)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height * .3)
      ..quadraticBezierTo(
        size.width * .6,
        size.height * .4,
        size.width,
        size.height * 0.2,
      )
      ..lineTo(size.width, 0)
      ..close();

    final path2 = Path()
      ..moveTo(size.width, size.height * .4)
      ..quadraticBezierTo(
        size.width * 0.5,
        size.height * .6,
        size.width * .9,
        size.height,
      )
      ..lineTo(size.width, size.height);

    path.addPath(path2, Offset.zero);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
