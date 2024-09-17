import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    required this.text,
    this.padding,
    this.onPress,
    super.key,
  });

  final String text;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: use_named_constants
      padding: padding ?? const EdgeInsets.all(0),
      child: Container(
        height: 52,
        width: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
          borderRadius: BorderRadiusDirectional.circular(25),
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          onPressed: onPress,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
