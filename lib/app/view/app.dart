// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:book_repository/book_repository.dart';
import 'package:chingu_bookfinder_flutter/book/bloc/book_bloc.dart';
import 'package:chingu_bookfinder_flutter/book/view/book_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (dynamic _) => BookRepository(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        home: BlocProvider(
          create: (context) => BookBloc(
            bookRepository: context.read<BookRepository>(),
          ),
          child: const BookPage(),
        ),
      ),
    );
  }
}
