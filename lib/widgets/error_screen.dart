import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    required String error,
    Key? key,
  })  : _error = error,
        super(key: key);

  final String _error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_error),
    );
  }
}
