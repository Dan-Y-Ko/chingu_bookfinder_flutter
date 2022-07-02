// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:book_repository/book_repository.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (dynamic _) => BookRepository(),
      child: BlocProvider(
        create: (context) => BookBloc(
          bookRepository: context.read<BookRepository>(),
        ),
        child: Builder(
          builder: (context) {
            final _router = GoRouter(
              urlPathStrategy: UrlPathStrategy.path,
              routes: [
                GoRoute(
                  path: '/',
                  builder: (context, state) => const BookPage(),
                  routes: [
                    GoRoute(
                      name: 'book_detail_route',
                      path: 'book/:id',
                      builder: (context, state) => const BookDetailPage(),
                    )
                  ],
                ),
              ],
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
