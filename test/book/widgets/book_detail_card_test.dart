import 'package:bloc_test/bloc_test.dart';
import 'package:book_repository/book_repository.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../helpers/helpers.dart';

class MockBookDetailBloc extends MockBloc<BookDetailEvent, BookDetailState>
    implements BookDetailBloc {}

void main() {
  group('book detail card', () {
    late BookDetailBloc _bookDetailBloc;

    const mockBook = BookDetail(
      id: '1',
      thumbnail: 'someUrl',
      authors: ['author1'],
      description: 'description',
      publisher: 'publisher',
      title: 'title',
    );

    Future<void> pumpBookDetailCard(WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpApp(
          const BookDetailCard(),
          bookDetailBloc: _bookDetailBloc,
        ),
      );
    }

    setUp(() {
      _bookDetailBloc = MockBookDetailBloc();

      when(() => _bookDetailBloc.state).thenReturn(
        const BookDetailState(
          status: BookDetailStatus.success,
          book: mockBook,
        ),
      );
    });

    testWidgets('renders card properly', (tester) async {
      await pumpBookDetailCard(tester);

      expect(find.byType(BookDetailCard), findsOneWidget);
    });
  });
}
