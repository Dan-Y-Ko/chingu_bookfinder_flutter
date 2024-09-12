// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:chingu_bookfinder_flutter/app/routes.dart';
import 'package:chingu_bookfinder_flutter/auth/auth.dart'
    show GoogleAuthBloc, GoogleAuthService;
import 'package:chingu_bookfinder_flutter/book/book.dart'
    show BookDetailBloc, BookListBloc, BookService;
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
    routes: $appRoutes,
    redirect: (BuildContext context, GoRouterState state) {
      final authState = googleAuthBloc.state;
      final loggedIn = authState.isAuthenticated;
      final loggingIn = state.path == AppRoutes.signInRoute;

      if (!loggedIn) {
        return loggingIn ? null : AppRoutes.signInRoute;
      }

      if (loggedIn && loggingIn) return AppRoutes.bookRoute;

      return null;
    },
    refreshListenable: BlocListenable(googleAuthBloc),
  );
}
