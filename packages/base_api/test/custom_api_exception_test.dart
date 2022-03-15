import 'package:base_api/src/custom_api_exception.dart';
import 'package:test/test.dart';

void main() {
  group('App Exception', () {
    test('returns expected string', () {
      var appException = AppException('test message', 'test prefix: ');

      expect(appException.toString(), 'test prefix: test message');
    });
  });

  group('FetchDataException', () {
    test('is an instance of App Exception', () {
      final fetchDataException = FetchDataException('test');

      expect(fetchDataException, isA<AppException>());
    });
  });

  group('BadRequestException', () {
    test('is an instance of App Exception', () {
      final badRequestException = BadRequestException('test');

      expect(badRequestException, isA<AppException>());
    });
  });
  group('UnauthorizedException', () {
    test('is an instance of App Exception', () {
      final unauthorizedException = UnauthorizedException('test');

      expect(unauthorizedException, isA<AppException>());
    });
  });
}
