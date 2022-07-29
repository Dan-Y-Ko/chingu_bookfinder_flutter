import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.arrow_upward,
            color: Colors.white,
          ),
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
              onTap: () {},
            ),
          ),
        )
      ],
    );
  }
}
