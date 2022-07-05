// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:chingu_bookfinder_flutter/app/app.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/helpers.dart';

void main() {
  group('App', () {
    setUp(() {});

    testWidgets('renders Book Page', (tester) async {
      await tester.pumpApp(const App());
      expect(find.byType(BookPage), findsOneWidget);
    });
  });
}
