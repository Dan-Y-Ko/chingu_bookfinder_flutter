import 'package:book_repository/book_repository.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mockBook = Book(
    id: '1',
    thumbnail: 'testurl',
    authors: const ['author'],
    publisher: 'publisher',
    title: 'title',
  );

  final mockBooks = [mockBook];

  group('BookState', () {
    BookState createSubject({
      BookStateStatus? status,
      List<Book>? books,
      String? error,
    }) {
      return BookState(
        status: status ?? BookStateStatus.initial,
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
          status: BookStateStatus.initial,
          books: mockBooks,
          error: '',
        ).props,
        equals([
          BookStateStatus.initial,
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
