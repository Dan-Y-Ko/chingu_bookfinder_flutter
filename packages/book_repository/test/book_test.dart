import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:book_repository/book_repository.dart';

void main() {
  group('Book model', () {
    late Book _book;

    setUp(() {
      _book = Book(
        id: 'kLAoswEACAAJ',
        thumbnail:
            'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
        authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
        publisher: 'Sphere',
        title: 'Harry Potter and the Cursed Child',
      );
    });

    test('instantiates properly', () {
      expect(_book.id, 'kLAoswEACAAJ');
      expect(_book.thumbnail,
          'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
      expect(_book.authors, ['J. K. Rowling', 'Jack Thorne', 'John Tiffany']);
      expect(_book.publisher, 'Sphere');
      expect(_book.title, 'Harry Potter and the Cursed Child');
    });

    test('object comparison is supported', () {
      expect(_book, equals(_book));
    });

    test('toString returns expected string', () {
      expect(
        _book.toString(),
        'Book(kLAoswEACAAJ, http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api, [J. K. Rowling, Jack Thorne, John Tiffany], Sphere, Harry Potter and the Cursed Child)',
      );
    });
  });
}
