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
      test('instantiates internal httpClient when not injected', () {
        expect(BaseApi(), isNotNull);
      });
    });

    group('get request', () {
      const baseUrl = 'www.mockapi.com';
      const url = '/mock';
      const query = {'q': 'mock-query'};

      group('success', () {
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
      });

      group('failure', () {
        const statusCodes = [
          400,
          401,
          403,
          404,
          500,
        ];

        for (final statusCode in statusCodes) {
          test('all error cases covered', () {
            final mockResponse = MockResponse();

            when(() => mockResponse.statusCode).thenReturn(statusCode);
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
        }

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
      });
    });
  });
}
