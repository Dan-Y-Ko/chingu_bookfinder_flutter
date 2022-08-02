import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../helpers/helpers.dart';

class MockBookListBloc extends MockBloc<BookListEvent, BookListState>
    implements BookListBloc {}

class MockBookDetailBloc extends MockBloc<BookDetailEvent, BookDetailState>
    implements BookDetailBloc {}

void main() {
  group('book detail card', () {
    late BookListBloc bookListBloc;
    late BookDetailBloc bookDetailBloc;

    const mockBook = Book(
      id: '1',
      thumbnail: 'someUrl',
      authors: ['author1'],
      publisher: 'publisher',
      title: 'title',
    );

    Future<void> pumpBookListWidget(WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpApp(
          BlocProvider.value(
            value: bookListBloc,
            child: const BookList(),
          ),
        ),
      );
    }

    setUp(() {
      bookListBloc = MockBookListBloc();
      bookDetailBloc = MockBookDetailBloc();

      when(() => bookListBloc.state).thenReturn(
        const BookListState(
          status: BookListStatus.success,
          books: [mockBook],
        ),
      );
    });

    testWidgets('renders card properly', (tester) async {
      await pumpBookListWidget(tester);

      expect(find.byType(BookList), findsOneWidget);
    });

    testWidgets(
      'navigates to book detail page on tap of view details button',
      (tester) async {
        final mockGoRouter = MockGoRouter();

        when(() => bookDetailBloc.state).thenReturn(
          const BookDetailState(),
        );

        when(
          () => bookDetailBloc.add(
            const GetBookDetailEvent(
              id: '1',
            ),
          ),
        ).thenAnswer((_) async {});

        await tester.pumpWithRoute(
          MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: bookListBloc,
              ),
              BlocProvider.value(
                value: bookDetailBloc,
              ),
            ],
            child: const BookList(),
          ),
          mockGoRouter: mockGoRouter,
        );

        final button = find.byType(ElevatedButton);
        await tester.tap(button);
        await tester.pumpAndSettle();

        verify(
          () => mockGoRouter.goNamed(
            'book_detail_route',
            params: {'id': '1'},
          ),
        ).called(1);
      },
    );
  });
}
