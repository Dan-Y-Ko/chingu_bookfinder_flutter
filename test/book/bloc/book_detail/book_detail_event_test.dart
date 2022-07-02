import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GetBookDetailEvent', () {
    test('supports value equality', () {
      expect(
        const GetBookDetailEvent(id: '1'),
        equals(
          const GetBookDetailEvent(id: '1'),
        ),
      );
    });

    test('props are correct', () {
      expect(
        const GetBookDetailEvent(id: '1').props,
        equals(
          ['1'],
        ),
      );
    });
  });
}
