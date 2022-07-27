import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockBookRepository extends Mock implements BookService {}

class MockBookListBloc extends MockBloc<BookListEvent, BookListState>
    implements BookListBloc {}

class MockBookDetailBloc extends MockBloc<BookDetailEvent, BookDetailState>
    implements BookDetailBloc {}

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
    Widget widget, {
    BookService? bookService,
    BookListBloc? bookListBloc,
    BookDetailBloc? bookDetailBloc,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: bookService,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: bookListBloc ?? MockBookListBloc(),
            ),
            BlocProvider.value(
              value: bookDetailBloc ?? MockBookDetailBloc(),
            ),
          ],
          child: MaterialApp(
            home: Scaffold(body: widget),
          ),
        ),
      ),
    );
  }

  Future<void> pumpWithRoute(
    Widget widget, {
    BookService? bookService,
    BookListBloc? bookListBloc,
    BookDetailBloc? bookDetailBloc,
    required MockGoRouter mockGoRouter,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: bookService,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: bookListBloc ?? MockBookListBloc(),
            ),
            BlocProvider.value(
              value: bookDetailBloc ?? MockBookDetailBloc(),
            ),
          ],
          child: MaterialApp(
            home: MockGoRouterProvider(
              goRouter: mockGoRouter,
              child: widget,
            ),
          ),
        ),
      ),
    );
  }
}
