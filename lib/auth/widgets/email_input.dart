import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
    required TextEditingController controller,
    required IconData icon,
    required String hintText,
  })  : _controller = controller,
        _icon = icon,
        _hintText = hintText,
        super(
          key: key,
        );

  final TextEditingController _controller;
  final IconData _icon;
  final String _hintText;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        hintColor: const Color(0xFFE1E0E0),
      ),
      child: TextField(
        controller: _controller,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(_icon),
          hintText: _hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF7A7675),
          ),
        ),
        textInputAction: TextInputAction.next,
        onSubmitted: (_) {},
      ),
    );
  }
}
