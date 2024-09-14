import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class Input extends StatelessWidget {
  const Input({
    required String controller,
    required IconData icon,
    required String hintText,
    required Map<String, ValidationMessageFunction> validationMessages,
    bool obscureText = false,
    super.key,
  })  : _controller = controller,
        _icon = icon,
        _hintText = hintText,
        _validationMessages = validationMessages,
        _obscureText = obscureText;

  final String _controller;
  final IconData _icon;
  final String _hintText;
  final Map<String, ValidationMessageFunction> _validationMessages;
  final bool _obscureText;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        hintColor: const Color(0xFFE1E0E0),
      ),
      child: ReactiveTextField<dynamic>(
        formControlName: _controller,
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
        obscureText: _obscureText,
        textInputAction: TextInputAction.next,
        validationMessages: _validationMessages,
      ),
    );
  }
}
