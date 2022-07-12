import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/book/repository/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const mockBook = Book(
    id: '1',
    thumbnail: 'testurl',
    authors: ['author'],
    publisher: 'publisher',
    title: 'title',
  );

  final mockBooks = [mockBook];

  group('BookState', () {
    BookListState createSubject({
      BookListStatus? status,
      List<Book>? books,
      String? error,
    }) {
      return BookListState(
        status: status ?? BookListStatus.initial,
        books: books ?? mockBooks,
        error: error ?? '',
      );
    }

    test('supports value equality', () {
      expect(
        createSubject(),
        equals(
          createSubject(),
        ),
      );
    });

    test('Props are correct', () {
      expect(
        createSubject(
          status: BookListStatus.initial,
          books: mockBooks,
          error: '',
        ).props,
        equals([
          BookListStatus.initial,
          mockBooks,
          '',
        ]),
      );
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        expect(
          createSubject().copyWith(),
          equals(
            createSubject(),
          ),
        );
      });
    });
  });
}
