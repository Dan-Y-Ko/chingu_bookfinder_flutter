import 'package:bloc_test/bloc_test.dart';
import 'package:book_repository/book_repository.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockBookRepository extends Mock implements BookRepository {}

class MockBookListBloc extends MockBloc<BookListEvent, BookListState>
    implements BookListBloc {}

class MockBookDetailBloc extends MockBloc<BookDetailEvent, BookDetailState>
    implements BookDetailBloc {}

void main() {
  group('Book List Page', () {
    late BookListBloc _bookListBloc;

    Future<void> pumpBookPageWithBloc(WidgetTester tester) async {
      await tester.pumpApp(
        const BookPage(),
        bookListBloc: _bookListBloc,
      );
    }

    setUp(() {
      _bookListBloc = MockBookListBloc();
    });

    testWidgets('search input is rendered', (tester) async {
      await tester.pumpApp(
        const SearchInput(),
      );

      expect(find.byType(SearchInput), findsOneWidget);
    });

    testWidgets('Book List Empty is rendered on initial status',
        (tester) async {
      when(() => _bookListBloc.state).thenReturn(
        const BookListState(),
      );

      await pumpBookPageWithBloc(tester);

      expect(find.byType(BookListEmpty), findsOneWidget);
    });

    testWidgets('Book Loading is rendered on loading status', (tester) async {
      when(() => _bookListBloc.state).thenReturn(
        const BookListState(status: BookListStatus.loading),
      );

      await pumpBookPageWithBloc(tester);

      expect(
        find.byType(
          Loading,
        ),
        findsOneWidget,
      );
    });

    testWidgets('Book List is rendered on success status', (tester) async {
      when(() => _bookListBloc.state).thenReturn(
        const BookListState(status: BookListStatus.success),
      );

      await pumpBookPageWithBloc(tester);

      expect(
        find.byType(
          BookList,
        ),
        findsOneWidget,
      );
    });

    testWidgets('Error Screen is rendered on error status', (tester) async {
      when(() => _bookListBloc.state).thenReturn(
        const BookListState(status: BookListStatus.failure),
      );

      await pumpBookPageWithBloc(tester);

      expect(
        find.byType(
          ErrorScreen,
        ),
        findsOneWidget,
      );
    });
  });
}
