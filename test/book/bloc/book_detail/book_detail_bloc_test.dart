import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/book/repository/repository.dart'
    as book_repository;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBookRepository extends Mock
    implements book_repository.BookRepository {}

class MockBookDetail extends Mock implements book_repository.BookDetail {}

void main() {
  group('book detail bloc', () {
    group('book bloc', () {
      late book_repository.BookDetail book;
      late book_repository.BookRepository bookRepository;
      late BookDetailBloc bookDetailBloc;

      setUp(() {
        book = MockBookDetail();
        bookRepository = MockBookRepository();
        when(() => book.id).thenReturn('1');
        when(() => book.authors).thenReturn(['author 1', 'author 2']);
        when(() => book.publisher).thenReturn('publisher');
        when(() => book.thumbnail).thenReturn('image');
        when(() => book.title).thenReturn('title');
        when(() => book.description).thenReturn('description');
        when(() => bookRepository.getBook(any())).thenAnswer(
          (_) async => book,
        );

        bookDetailBloc = BookDetailBloc(bookRepository: bookRepository);
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
              () => bookRepository.getBook(any()),
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
