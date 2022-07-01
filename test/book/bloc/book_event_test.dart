import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BookEvent', () {
    group('GetBooksEvent', () {
      test('supports value equality', () {
        expect(
          const GetBooksEvent(query: 'harrypotter'),
          equals(
            const GetBooksEvent(query: 'harrypotter'),
          ),
        );
      });

      test('props are correct', () {
        expect(
          const GetBooksEvent(query: 'harrypotter').props,
          equals(
            ['harrypotter'],
          ),
        );
      });
    });

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
  });
}
