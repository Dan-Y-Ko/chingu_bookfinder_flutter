// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $signInRoute,
      $bookPageRoute,
    ];

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => SignInRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $bookPageRoute => GoRouteData.$route(
      path: '/book',
      factory: $BookPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'book/:id',
          factory: $BookDetailRouteExtension._fromState,
        ),
      ],
    );

extension $BookPageRouteExtension on BookPageRoute {
  static BookPageRoute _fromState(GoRouterState state) => BookPageRoute();

  String get location => GoRouteData.$location(
        '/book',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BookDetailRouteExtension on BookDetailRoute {
  static BookDetailRoute _fromState(GoRouterState state) => BookDetailRoute(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/book/book/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
