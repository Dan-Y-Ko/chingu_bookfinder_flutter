import 'package:bloc_test/bloc_test.dart';
import 'package:book_repository/book_repository.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/pump_app.dart';

class MockBookRepository extends Mock implements BookRepository {}

class MockBookListBloc extends MockBloc<BookListEvent, BookListState>
    implements BookListBloc {}

class MockBookDetailBloc extends MockBloc<BookDetailEvent, BookDetailState>
    implements BookDetailBloc {}

void main() {
  group('search input', () {
    late BookRepository _bookRepository;
    late BookListBloc _bookListBloc;
    late BookDetailBloc _bookDetailBloc;

    setUp(() {
      _bookRepository = MockBookRepository();
      _bookListBloc = MockBookListBloc();
      _bookDetailBloc = MockBookDetailBloc();
    });

    testWidgets('triggeres fetch on submit', (tester) async {
      when(() => _bookListBloc.state).thenReturn(
        const BookListState(),
      );

      when(
        () => _bookListBloc.add(
          const GetBooksEvent(query: 'asd'),
        ),
      ).thenAnswer((_) async {});

      await tester.pumpApp(
        const SearchInput(),
        bookListBloc: _bookListBloc,
      );

      final input = find.byType(TextField);

      expect(input, findsOneWidget);

      await tester.tap(input);
      await tester.showKeyboard(input);
      tester.testTextInput.enterText('asd');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      verify(
        () => _bookListBloc.add(
          const GetBooksEvent(query: 'asd'),
        ),
      ).called(1);
    });
  });
}
