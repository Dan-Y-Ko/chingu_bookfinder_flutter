import 'package:chingu_bookfinder_flutter/auth/auth.dart' show SignInPage;
import 'package:chingu_bookfinder_flutter/book/book.dart'
    show BookDetailPage, BookPage;
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<SignInRoute>(path: AppRoutes.signInRoute)
@immutable
class SignInRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInPage();
  }
}

// -----------------------------------------------------------------------------//

@TypedGoRoute<BookPageRoute>(
  path: AppRoutes.bookRoute,
  routes: [
    TypedGoRoute<BookDetailRoute>(
      path: AppRoutes.bookDetailRoute,
    )
  ],
)
@immutable
class BookPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BookPage();
  }
}

@immutable
class BookDetailRoute extends GoRouteData {
  const BookDetailRoute({
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BookDetailPage();
  }
}

// ----------------------------------------------------------------------------//

class AppRoutes {
  static const String signInRoute = '/';
  static const String bookRoute = '/book';
  static const String bookDetailRoute = 'book/:id';
}
