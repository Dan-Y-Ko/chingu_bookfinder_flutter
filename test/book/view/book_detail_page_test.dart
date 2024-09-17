import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart'
    show
        BookDetailBloc,
        BookDetailCard,
        BookDetailEvent,
        BookDetailPage,
        BookDetailState,
        BookDetailStatus;
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockBookDetailBloc extends MockBloc<BookDetailEvent, BookDetailState>
    implements BookDetailBloc {}

void main() {
  group('book detail page', () {
    late BookDetailBloc bookDetailBloc;

    Future<void> pumpBookDetailPageWithBloc(WidgetTester tester) async {
      await tester.pumpApp(
        BlocProvider.value(
          value: bookDetailBloc,
          child: const BookDetailPage(),
        ),
      );
    }

    setUp(() {
      bookDetailBloc = MockBookDetailBloc();
    });

    testWidgets('renders nothing on initial state', (tester) async {
      when(() => bookDetailBloc.state).thenReturn(
        const BookDetailState(),
      );

      await pumpBookDetailPageWithBloc(tester);

      expect(find.byType(SizedBox), findsOneWidget);
    });

    testWidgets('Loading is rendered on loading status', (tester) async {
      when(() => bookDetailBloc.state).thenReturn(
        const BookDetailState(status: BookDetailStatus.loading),
      );

      await pumpBookDetailPageWithBloc(tester);

      expect(
        find.byType(
          Loading,
        ),
        findsOneWidget,
      );
    });

    testWidgets('Book Detail Page is rendered on success status',
        (tester) async {
      when(() => bookDetailBloc.state).thenReturn(
        const BookDetailState(status: BookDetailStatus.success),
      );

      await pumpBookDetailPageWithBloc(tester);

      expect(
        find.byType(
          BookDetailCard,
        ),
        findsOneWidget,
      );
    });

    testWidgets('Error Screen is rendered on error status', (tester) async {
      when(() => bookDetailBloc.state).thenReturn(
        const BookDetailState(status: BookDetailStatus.failure),
      );

      await pumpBookDetailPageWithBloc(tester);

      expect(
        find.byType(
          ErrorScreen,
        ),
        findsOneWidget,
      );
    });
  });
}
