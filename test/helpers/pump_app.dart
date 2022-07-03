import 'package:bloc_test/bloc_test.dart';
import 'package:book_repository/book_repository.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBookRepository extends Mock implements BookRepository {}

class MockBookListBloc extends MockBloc<BookListEvent, BookListState>
    implements BookListBloc {}

class MockBookDetailBloc extends MockBloc<BookDetailEvent, BookDetailState>
    implements BookDetailBloc {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    BookRepository? bookRepository,
    BookListBloc? bookListBloc,
    BookDetailBloc? bookDetailBloc,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: bookRepository ?? MockBookRepository(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: bookListBloc ?? MockBookListBloc(),
            ),
            BlocProvider.value(
              value: bookDetailBloc ?? MockBookDetailBloc(),
            ),
          ],
          child: MaterialApp(
            home: Scaffold(body: widget),
          ),
        ),
      ),
    );
  }
}
