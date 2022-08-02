// import 'dart:async';

// import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import '../helpers/helpers.dart';

// void main() {
//   testWidgets('button callback gets called', (WidgetTester tester) async {
//     final completer = Completer<void>();

//     await tester.pumpApp(
//       GradientButton(
//         text: '',
//         onPress: completer.complete,
//       ),
//     );

//     final button = find.byType(MaterialButton);
//     await tester.tap(button);
//     await tester.pumpAndSettle();

//     expect(completer.isCompleted, true);
//   });
// }
