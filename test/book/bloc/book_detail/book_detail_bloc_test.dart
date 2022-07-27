import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/book/service/service.dart'
    as book_service;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBookService extends Mock implements book_service.BookService {}

class MockBookDetail extends Mock implements BookDetail {}

void main() {
  group('book detail bloc', () {
    group('book bloc', () {
      late BookDetail book;
      late book_service.BookService bookService;
      late BookDetailBloc bookDetailBloc;

      setUp(() {
        book = MockBookDetail();
        bookService = MockBookService();
        when(() => book.id).thenReturn('1');
        when(() => book.authors).thenReturn(['author 1', 'author 2']);
        when(() => book.publisher).thenReturn('publisher');
        when(() => book.thumbnail).thenReturn('image');
        when(() => book.title).thenReturn('title');
        when(() => book.description).thenReturn('description');
        when(() => bookService.getBook(any())).thenAnswer(
          (_) async => book,
        );

        bookDetailBloc = BookDetailBloc(bookService: bookService);
      });

      group('constructor', () {
        test('has correct initial state', () {
          expect(
            bookDetailBloc.state,
            equals(const BookDetailState()),
          );
        });
      });

      group('GetBookDetailEvent', () {
        blocTest<BookDetailBloc, BookDetailState>(
          '''
          emits loading status when book is being fetched 
          and success status upon successful fetch and 
          when GetBookDetailEvent is added
        ''',
          build: () => bookDetailBloc,
          act: (bloc) => bloc.add(
            const GetBookDetailEvent(id: '1'),
          ),
          expect: () => [
            const BookDetailState(status: BookDetailStatus.loading),
            BookDetailState(
              status: BookDetailStatus.success,
              book: book,
            )
          ],
        );

        blocTest<BookDetailBloc, BookDetailState>(
          'emits failure status when error occurs',
          setUp: () {
            when(
              () => bookService.getBook(any()),
            ).thenAnswer(
              (_) => Future.error(
                'Status Code: 404 Resource not found',
              ),
            );
          },
          build: () => bookDetailBloc,
          act: (bloc) => bloc.add(
            const GetBookDetailEvent(id: '1'),
          ),
          expect: () => [
            const BookDetailState(status: BookDetailStatus.loading),
            const BookDetailState(
              status: BookDetailStatus.failure,
              error: 'Status Code: 404 Resource not found',
            ),
          ],
        );
      });
    });
  });
}
