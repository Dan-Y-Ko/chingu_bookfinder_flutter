import 'package:test/test.dart';

import 'package:book_repository/book_repository.dart';

void main() {
  group('Book', () {
    const data = [
      {
        'kind': 'books#volume',
        'id': 'kLAoswEACAAJ',
        'etag': 'WrZzXYAOTQo',
        'volumeInfo': {
          'title': 'test title',
          'authors': [
            'test author 1',
            'test author 2',
          ],
          'publisher': 'test publisher',
          'description': 'test description',
          'readingModes': {'text': false, 'image': false},
          'pageCount': 352,
          'printType': 'BOOK',
          'categories': ['Fiction'],
          'averageRating': 3.5,
          'ratingsCount': 3,
          'maturityRating': 'NOT_MATURE',
          'allowAnonLogging': false,
          'contentVersion': 'preview-1.0.0',
          'imageLinks': {
            'smallThumbnail':
                'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api',
            'thumbnail':
                'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'
          },
          'language': 'en',
        },
      },
      {
        'kind': 'books#volume',
        'id': 'kLAoswEACAAJ',
        'etag': 'WrZzXYAOTQo',
        'volumeInfo': {
          'title': 'test title 2',
          'authors': [
            'test author 1',
            'test author 2',
          ],
          'publisher': 'test publisher 2',
          'description': 'test description 2',
          'readingModes': {'text': false, 'image': false},
          'pageCount': 352,
          'printType': 'BOOK',
          'categories': ['Fiction'],
          'averageRating': 3.5,
          'ratingsCount': 3,
          'maturityRating': 'NOT_MATURE',
          'allowAnonLogging': false,
          'contentVersion': 'preview-1.0.0',
          'imageLinks': {
            'smallThumbnail':
                'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api',
            'thumbnail':
                'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'
          },
          'language': 'en',
        },
      },
    ];

    test('Given book json data, data is properly parsed into book model', () {
      final books = data
          .map<Book>(
            (dynamic book) => Book.fromJson(book as Map<String, dynamic>),
          )
          .toList();

      expect(books, isA<List<Book>>());
      expect(books.length, greaterThan(0));
    });
  });
}
