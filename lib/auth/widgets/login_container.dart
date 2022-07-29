import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height * .75,
      child: CustomPaint(
        painter: CustomLoginContainerPainter(),
        child: const Center(child: Text('asdasd')),
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
      ..lineTo(
        0,
        size.height * 0.68,
      )
      ..quadraticBezierTo(
        0,
        size.height * 0.699,
        size.width * 0.05,
        size.height * 0.715,
      )
      ..lineTo(
        size.width * 0.92,
        size.height * 0.98,
      )
      ..quadraticBezierTo(
        size.width,
        size.height,
        size.width,
        size.height * 0.95,
      )
      ..lineTo(
        size.width,
        size.height * 0.04,
      )
      ..quadraticBezierTo(
        size.width,
        0,
        size.width * 0.92,
        0,
      )
      ..lineTo(
        size.width * 0.07,
        0,
      )
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
