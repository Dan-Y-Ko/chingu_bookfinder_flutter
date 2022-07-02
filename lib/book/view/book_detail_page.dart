import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Book Detail Page'),
        ),
      ),
    );
  }
}
