import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    required String error,
    super.key,
  }) : _error = error;

  final String _error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_error),
    );
  }
}
