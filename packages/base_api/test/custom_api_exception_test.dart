import 'package:base_api/base_api.dart';
import 'package:test/test.dart';

void main() {
  group('App Exception', () {
    test('returns expected string', () {
      var appException = AppException(
        'test message',
      );

      expect(
        appException.toString(),
        'test message',
      );
    });
  });
}
