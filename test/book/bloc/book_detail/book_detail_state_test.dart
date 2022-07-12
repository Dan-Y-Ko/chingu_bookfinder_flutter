import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/book/repository/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const mockBook = BookDetail(
    id: '1',
    thumbnail: 'testurl',
    authors: ['author'],
    publisher: 'publisher',
    title: 'title',
    description: 'description',
  );

  group('BookDetailState', () {
    BookDetailState createSubject({
      BookDetailStatus? status,
      BookDetail? book,
      String? error,
    }) {
      return BookDetailState(
        status: status ?? BookDetailStatus.initial,
        book: book ?? mockBook,
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
          status: BookDetailStatus.initial,
          book: mockBook,
          error: '',
        ).props,
        equals([
          BookDetailStatus.initial,
          mockBook,
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
