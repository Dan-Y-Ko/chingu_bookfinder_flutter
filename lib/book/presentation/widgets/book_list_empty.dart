import 'package:flutter/material.dart';

class BookListEmpty extends StatelessWidget {
  const BookListEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search for a book!'),
    );
  }
}
