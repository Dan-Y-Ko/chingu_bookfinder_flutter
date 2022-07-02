import 'package:bloc_test/bloc_test.dart';
import 'package:book_repository/book_repository.dart' as book_repository;
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBookRepository extends Mock
    implements book_repository.BookRepository {}

class MockBook extends Mock implements book_repository.Book {}

void main() {
  group('book bloc', () {
    late book_repository.Book book;
    late book_repository.BookRepository bookRepository;
    late BookBloc bookBloc;

    setUp(() async {
      book = MockBook();
      bookRepository = MockBookRepository();
      when(() => book.id).thenReturn('1');
      when(() => book.authors).thenReturn(['author 1', 'author 2']);
      when(() => book.publisher).thenReturn('publisher');
      when(() => book.thumbnail).thenReturn('image');
      when(() => book.title).thenReturn('title');
      when(() => bookRepository.getBooks(any())).thenAnswer(
        (_) async => [book],
      );

      bookBloc = BookBloc(bookRepository: bookRepository);
    });

    group('constructor', () {
      test('has correct initial state', () {
        expect(
          bookBloc.state,
          equals(const BookState()),
        );
      });
    });

    group('GetBooksEvent', () {
      blocTest<BookBloc, BookState>(
        '''
          emits loading status when books are being fetchs 
          and success status upon successful fetch and books 
          when GetBooksEvent is added
        ''',
        build: () => bookBloc,
        act: (bloc) => bloc.add(
          const GetBooksEvent(query: 'harrypotter'),
        ),
        expect: () => [
          const BookState(status: BookStateStatus.loading),
          BookState(
            status: BookStateStatus.success,
            books: [book],
          )
        ],
      );

      blocTest<BookBloc, BookState>(
        'emits failure status when error occurs',
        setUp: () {
          when(
            () => bookRepository.getBooks(any()),
          ).thenAnswer(
            (_) => Future.error(
              'Status Code: 404 Resource not found',
            ),
          );
        },
        build: () => bookBloc,
        act: (bloc) => bloc.add(
          const GetBooksEvent(query: 'harrypotter'),
        ),
        expect: () => [
          const BookState(status: BookStateStatus.loading),
          const BookState(
            status: BookStateStatus.failure,
            error: 'Status Code: 404 Resource not found',
          ),
        ],
      );
    });
  });
}