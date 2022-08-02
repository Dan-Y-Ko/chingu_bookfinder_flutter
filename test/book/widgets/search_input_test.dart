import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/pump_app.dart';

class MockBookListBloc extends MockBloc<BookListEvent, BookListState>
    implements BookListBloc {}

void main() {
  group('search input', () {
    late BookListBloc bookListBloc;

    setUp(() {
      bookListBloc = MockBookListBloc();
    });

    testWidgets('triggeres fetch on submit', (tester) async {
      when(() => bookListBloc.state).thenReturn(
        const BookListState(),
      );

      when(
        () => bookListBloc.add(
          const GetBooksEvent(query: 'asd'),
        ),
      ).thenAnswer((_) async {});

      await tester.pumpApp(
        BlocProvider.value(
          value: bookListBloc,
          child: const SearchInput(),
        ),
      );

      final input = find.byType(TextField);

      expect(input, findsOneWidget);

      await tester.tap(input);
      await tester.showKeyboard(input);
      tester.testTextInput.enterText('asd');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      verify(
        () => bookListBloc.add(
          const GetBooksEvent(query: 'asd'),
        ),
      ).called(1);
    });
  });
}
