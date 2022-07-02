import 'package:book_repository/book_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBookRepository extends Mock implements BookRepository {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    BookRepository? bookRepository,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: bookRepository ?? MockBookRepository(),
        child: MaterialApp(
          home: Scaffold(body: widget),
        ),
      ),
    );
  }
}
