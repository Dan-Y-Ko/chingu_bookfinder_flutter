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

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (dynamic _) => BookRepository(),
        ),
        RepositoryProvider(
          create: (context) => GoogleAuthRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GoogleAuthBloc(
              googleAuthRepository: context.read<GoogleAuthRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => BookListBloc(
              bookRepository: context.read<BookRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => BookDetailBloc(
              bookRepository: context.read<BookRepository>(),
            ),
          ),
        ],
        child: Builder(
          builder: (context) {
            final authState = context.read<GoogleAuthBloc>();
            final _router = GoRouter(
              urlPathStrategy: UrlPathStrategy.path,
              routes: [
                GoRoute(
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
                      builder: (context, state) => BookDetailPage(
                        id: state.params['id']!,
                      ),
                    )
                  ],
                ),
              ],
              redirect: (state) {
                final loggedIn = authState.state.isAuthenticated;
                final loggingIn = state.location == '/';

                if (loggedIn == false) {
                  return loggingIn ? null : '/';
                }

                if (loggedIn == true && loggingIn) return '/book';

                return null;
              },
              refreshListenable: GoRouterRefreshStream(
                authState.stream,
              ),
            );

            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routeInformationProvider: _router.routeInformationProvider,
              routeInformationParser: _router.routeInformationParser,
              routerDelegate: _router.routerDelegate,
              title: 'Chingu Bookfinder',
            );
          },
        ),
      ),
    );
  }
}
