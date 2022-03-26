import 'package:base_api/base_api.dart' show AppException;
import 'package:google_books_api/google_books_api.dart' as google_books_api;
import 'package:google_books_api/src/models/book_volume.dart' as book_volume;
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:book_repository/book_repository.dart';

class MockGoogleApiClient extends Mock
    implements google_books_api.GoogleBooksApiClient {}

class MockBook extends Mock implements google_books_api.Book {}

class MockBookDetail extends Mock implements book_volume.BookVolume {}

void main() {
  group('Book Repository', () {
    late google_books_api.GoogleBooksApiClient googleBooksApiClient;
    late BookRepository bookRepository;

    setUp(() {
      googleBooksApiClient = MockGoogleApiClient();
      bookRepository =
          BookRepository(googleBooksApiClient: googleBooksApiClient);
    });

    group('constructor', () {
      test('instantiates internal GoogleApiClient when not injected', () {
        expect(BookRepository(), isNotNull);
      });
    });

    group('getBooks', () {
      test('returns correct Book model', () async {
        final books = [MockBook()];
        when(() => books[0].id).thenReturn('kLAoswEACAAJ');
        when(() => books[0].volumeInfo).thenReturn(
          google_books_api.VolumeInfo(
            imageLinks: google_books_api.ImageLinks(
              thumbnail:
                  'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
            ),
            authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
            publisher: 'Sphere',
            title: 'Harry Potter and the Cursed Child',
          ),
        );
        when(() => googleBooksApiClient.getBooks(any()))
            .thenAnswer((_) async => books);

        final actual = await bookRepository.getBooks('harrypotter');

        expect(
          actual,
          [
            Book(
              id: 'kLAoswEACAAJ',
              thumbnail:
                  'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
              authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
              publisher: 'Sphere',
              title: 'Harry Potter and the Cursed Child',
            )
          ],
        );
      });

      test('properly throws when there is exception', () {
        when(() => googleBooksApiClient.getBooks(any())).thenThrow(
          AppException('No Internet Connection'),
        );

        expect(
          () async => bookRepository.getBooks(''),
          throwsA(
            isA<AppException>(),
          ),
        );
      });
    });

    group('getBook', () {
      test('returns correct Book model', () async {
        final book = MockBookDetail();
        when(() => book.id).thenReturn('kLAoswEACAAJ');
        when(() => book.volumeInfo).thenReturn(
          book_volume.VolumeInfo(
            imageLinks: book_volume.ImageLinks(
              thumbnail:
                  'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
            ),
            authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
            publisher: 'Sphere',
            title: 'Harry Potter and the Cursed Child',
            description: 'some description',
          ),
        );
        when(() => googleBooksApiClient.getBook(any()))
            .thenAnswer((_) async => book);

        final actual = await bookRepository.getBook('kLAoswEACAAJ');

        expect(
          actual,
          BookDetail(
            id: 'kLAoswEACAAJ',
            thumbnail:
                'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
            authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
            publisher: 'Sphere',
            title: 'Harry Potter and the Cursed Child',
            description: 'some description',
          ),
        );
      });

      test('properly throws when there is exception', () {
        when(() => googleBooksApiClient.getBook(any())).thenThrow(
          AppException('No Internet Connection'),
        );

        expect(
          () async => bookRepository.getBook(''),
          throwsA(
            isA<AppException>(),
          ),
        );
      });
    });
  });
}
