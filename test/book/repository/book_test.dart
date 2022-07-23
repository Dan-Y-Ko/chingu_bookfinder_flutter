import 'package:chingu_bookfinder_flutter/book/repository/repository.dart';
import 'package:test/test.dart';

void main() {
  group('Book model', () {
    late Book book;

    setUp(() {
      book = const Book(
        id: 'kLAoswEACAAJ',
        thumbnail:
            'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
        authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
        publisher: 'Sphere',
        title: 'Harry Potter and the Cursed Child',
      );
    });

    test('instantiates properly', () {
      expect(book.id, 'kLAoswEACAAJ');
      expect(
        book.thumbnail,
        'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
      );
      expect(book.authors, ['J. K. Rowling', 'Jack Thorne', 'John Tiffany']);
      expect(book.publisher, 'Sphere');
      expect(book.title, 'Harry Potter and the Cursed Child');
    });

    test('object comparison is supported', () {
      expect(book, equals(book));
    });

    test('toString returns expected string', () {
      expect(
        book.toString(),
        'Book(id: kLAoswEACAAJ, thumbnail: http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api, authors: [J. K. Rowling, Jack Thorne, John Tiffany], publisher: Sphere, title: Harry Potter and the Cursed Child)',
      );
    });
  });
}
