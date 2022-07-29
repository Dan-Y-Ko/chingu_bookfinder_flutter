import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return CustomPaint(
      size: Size(width, height),
      painter: CustomBackgroundPainter(context: context),
    );
  }
}

class CustomBackgroundPainter extends CustomPainter {
  CustomBackgroundPainter({
    required this.context,
  });

  final BuildContext context;

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
