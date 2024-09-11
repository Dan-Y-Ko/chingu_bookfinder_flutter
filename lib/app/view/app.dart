// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BlocListenable<T> extends ChangeNotifier implements Listenable {
  BlocListenable(this.bloc) {
    bloc.stream.listen((state) {
      notifyListeners();
    });
  }
  final BlocBase<T> bloc;

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (dynamic _) => BookService(),
        ),
        RepositoryProvider(
          create: (context) => GoogleAuthService(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GoogleAuthBloc(
              googleAuthService: context.read<GoogleAuthService>(),
            ),
          ),
          BlocProvider(
            create: (context) => BookListBloc(
              bookService: context.read<BookService>(),
            ),
          ),
          BlocProvider(
            create: (context) => BookDetailBloc(
              bookService: context.read<BookService>(),
            ),
          ),
        ],
        child: Builder(
          builder: (context) {
            final googleAuthBloc = context.read<GoogleAuthBloc>();
            final router = createRouter(googleAuthBloc);

            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: router,
              title: 'Chingu Bookfinder',
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xFFece8e3),
                colorScheme: ColorScheme.fromSwatch().copyWith(
                  primary: const Color(0xFF23d9ac),
                  secondary: const Color(0xFF00ff08),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

GoRouter createRouter(GoogleAuthBloc googleAuthBloc) {
  return GoRouter(
    routes: [
      GoRoute(
        name: 'sign_in_route',
        path: '/',
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        name: 'book_route',
        path: '/book',
        builder: (context, state) => const BookPage(),
        routes: [
          GoRoute(
            name: 'book_detail_route',
            path: 'book/:id',
            builder: (context, state) => const BookDetailPage(),
          ),
        ],
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final authState = googleAuthBloc.state;
      final loggedIn = authState.isAuthenticated;

      if (loggedIn) return '/book';

      return '/';
    },
    refreshListenable: BlocListenable(googleAuthBloc),
  );
}
