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
      const baseUrl = 'www.mockapi.com';
      const url = '/mock';
      const query = {'q': 'mock-query'};

      test('makes correct http request', () async {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockResponse.body).thenReturn('''
          {
            "testkey": "testvalue"
          }
          ''');

        when(() => httpClient.get(any())).thenAnswer(
          (_) async => mockResponse,
        );

        try {
          await baseApi.get(baseUrl, url, query);
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(baseUrl, url, query),
          ),
        ).called(1);
      });

      test('throws app exception on socket exception', () {
        when(() => httpClient.get(any())).thenThrow(
          const SocketException(
            'No Internet connection',
          ),
        );

        expect(
          () async => await baseApi.get(baseUrl, url, query),
          throwsA(
            isA<AppException>(),
          ),
        );
      });

      test('throws app exception on 400 status code response', () {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(400);
        when(() => mockResponse.body).thenReturn('');
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => mockResponse,
        );

        expect(
          () async => await baseApi.get(baseUrl, url, query),
          throwsA(
            isA<AppException>(),
          ),
        );
      });

      test('throws app exception on 401 status code response', () {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(401);
        when(() => mockResponse.body).thenReturn('');
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => mockResponse,
        );

        expect(
          () async => await baseApi.get(baseUrl, url, query),
          throwsA(
            isA<AppException>(),
          ),
        );
      });

      test('throws app exception on 403 status code response', () {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(403);
        when(() => mockResponse.body).thenReturn('');
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => mockResponse,
        );

        expect(
          () async => await baseApi.get(baseUrl, url, query),
          throwsA(
            isA<AppException>(),
          ),
        );
      });

      test('throws app exception on 404 status code response', () {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(404);
        when(() => mockResponse.body).thenReturn('');
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => mockResponse,
        );

        expect(
          () async => await baseApi.get(baseUrl, url, query),
          throwsA(
            isA<AppException>(),
          ),
        );
      });

      test('throws app exception on any unhandled status code response', () {
        final mockResponse = MockResponse();

        when(() => mockResponse.statusCode).thenReturn(500);
        when(() => mockResponse.body).thenReturn('');
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => mockResponse,
        );

        expect(
          () async => await baseApi.get(baseUrl, url, query),
          throwsA(
            isA<AppException>(),
          ),
        );
      });
    });
  });
}
