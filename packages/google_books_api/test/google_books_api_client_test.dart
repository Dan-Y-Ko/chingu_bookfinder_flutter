import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'package:google_books_api/src/models/book_volume.dart';
import 'package:google_books_api/google_books_api.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  late http.Client httpClient;
  late GoogleBooksApiClient googleBooksApiClient;

  setUpAll(() {
    registerFallbackValue(FakeUri());
  });

  setUp(() {
    httpClient = MockHttpClient();
    googleBooksApiClient = GoogleBooksApiClient(httpClient: httpClient);
  });

  group('constructor', () {
    test('does not require an httpClient', () {
      expect(GoogleBooksApiClient(), isNotNull);
    });
  });
}
