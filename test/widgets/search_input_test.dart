import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/pump_app.dart';

class MockBookListBloc extends MockBloc<BookListEvent, BookListState>
    implements BookListBloc {}

void main() {
  group('search input', () {
    late BookListBloc _bookListBloc;

    setUp(() {
      _bookListBloc = MockBookListBloc();
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
