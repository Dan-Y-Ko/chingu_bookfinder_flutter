import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    required Icon icon,
    required double height,
    required double width,
    required void Function() onTap,
    super.key,
    RadialGradient? gradient,
    Color? color,
  })  : _icon = icon,
        _height = height,
        _width = width,
        _gradient = gradient,
        _color = color,
        _onTap = onTap;

  final Icon _icon;
  final double _height;
  final double _width;
  final RadialGradient? _gradient;
  final Color? _color;
  final void Function() _onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            gradient: _gradient,
            borderRadius: BorderRadius.circular(50),
          ),
          child: _icon,
        ),
        Positioned.fill(
          child: Material(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                50,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              onTap: _onTap,
            ),
          ),
        ),
      ],
    );
  }
}
