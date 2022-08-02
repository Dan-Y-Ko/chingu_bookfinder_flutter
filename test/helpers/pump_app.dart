import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockGoRouter extends Mock implements GoRouter {}

class MockGoRouterProvider extends StatelessWidget {
  const MockGoRouterProvider({
    required this.goRouter,
    required this.child,
    Key? key,
  }) : super(key: key);

  final MockGoRouter goRouter;

  final Widget child;

  @override
  Widget build(BuildContext context) => InheritedGoRouter(
        goRouter: goRouter,
        child: child,
      );
}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget,
  ) {
    return pumpWidget(
      MaterialApp(
        home: Scaffold(body: widget),
      ),
    );
  }

  Future<void> pumpWithRoute(
    Widget widget, {
    required MockGoRouter mockGoRouter,
  }) {
    return pumpWidget(
      MaterialApp(
        home: MockGoRouterProvider(
          goRouter: mockGoRouter,
          child: widget,
        ),
      ),
    );
  }
}
