import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height * .85,
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
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(
        0,
        size.height - 30,
      )
      ..quadraticBezierTo(
        0,
        size.height,
        size.width * 0.076,
        size.height,
      )
      ..lineTo(size.width - 30, size.height)
      ..quadraticBezierTo(
        size.width,
        size.height,
        size.width,
        size.height - 30,
      )
      ..lineTo(size.width, 30)
      ..quadraticBezierTo(
        size.width,
        0,
        size.width - 30,
        0,
      )
      ..lineTo(size.width * 0.07, 0)
      ..quadraticBezierTo(0, 0, 0, size.height * 0.05);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
