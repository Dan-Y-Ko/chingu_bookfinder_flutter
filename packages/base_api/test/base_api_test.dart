import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:base_api/base_api.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('Base Api', () {
    late http.Client httpClient;
    late BaseApi baseApi;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      baseApi = BaseApi(httpClient: httpClient);
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(BaseApi(), isNotNull);
      });
    });

    group('get request', () {
      const baseUrl = 'www.googleapis.com';
      const url = '/books/v1/volumes';
      const query = {'q': 'mock-query'};

      test('http request is called', () async {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockResponse.body).thenReturn('[]');
        when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);

        try {
          await baseApi.get(baseUrl, url, query);
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'www.googleapis.com',
              '/books/v1/volumes',
              query,
            ),
          ),
        ).called(1);
      });

      test('returns properly decoded json', () async {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockResponse.body).thenReturn('''
          {
            "items": [
              {
                "test": "test"
              },
              {
                "another test": "another test"
              }
            ]
          }
          ''');

        when(() => httpClient.get(any())).thenAnswer(
          (_) async => mockResponse,
        );

        final response =
            await baseApi.get(baseUrl, url, query) as Map<String, dynamic>;

        expect(response, isA<Map<String, dynamic>>());
      });

      test('returns fetch data exception on socket exception', () async {
        when(() => httpClient.get(any())).thenThrow(
          const SocketException(
            'No Internet connection',
          ),
        );

        expect(
          () => baseApi.get(baseUrl, url, query),
          throwsA(
            isA<FetchDataException>(),
          ),
        );
      });

      test('', () {});
      test('', () {});
    });
  });
}
