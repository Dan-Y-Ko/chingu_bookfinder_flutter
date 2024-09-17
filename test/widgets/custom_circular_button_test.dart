import 'dart:async';

import 'package:chingu_bookfinder_flutter/widgets/widgets.dart'
    show CustomCircularButton;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/helpers.dart';

void main() {
  testWidgets('button callback gets called', (WidgetTester tester) async {
    final completer = Completer<void>();

    await tester.pumpApp(
      CustomCircularButton(
        icon: const Icon(Icons.clear),
        height: 1,
        width: 1,
        onTap: completer.complete,
      ),
    );

    final button = find.byType(Container);
    await tester.tap(button, warnIfMissed: false);
    await tester.pumpAndSettle();

    expect(completer.isCompleted, true);
  });
}
