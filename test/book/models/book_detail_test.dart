import 'package:chingu_bookfinder_flutter/book/book.dart' show BookDetail;
import 'package:test/test.dart';

void main() {
  group('Book model', () {
    late BookDetail bookDetail;

    setUp(() {
      bookDetail = const BookDetail(
        id: 'kLAoswEACAAJ',
        thumbnail:
            'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
        authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
        publisher: 'Sphere',
        title: 'Harry Potter and the Cursed Child',
        description: 'some description',
      );
    });

    test('instantiates properly', () {
      expect(bookDetail.id, 'kLAoswEACAAJ');
      expect(
        bookDetail.thumbnail,
        'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
      );
      expect(
        bookDetail.authors,
        ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
      );
      expect(bookDetail.publisher, 'Sphere');
      expect(bookDetail.title, 'Harry Potter and the Cursed Child');
      expect(bookDetail.description, 'some description');
    });

    test('object comparison is supported', () {
      expect(bookDetail, equals(bookDetail));
    });

    test('toString returns expected string', () {
      expect(
        bookDetail.toString(),
        bookDetail.toString(),
      );
    });
  });
}
