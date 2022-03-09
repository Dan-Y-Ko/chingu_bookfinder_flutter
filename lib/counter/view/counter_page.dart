// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:developer';

import 'package:chingu_bookfinder_flutter/counter/counter.dart';
import 'package:chingu_bookfinder_flutter/counter/models/book.dart';
import 'package:chingu_bookfinder_flutter/counter/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  Future<List<Book>> getBooks() async {
    final url = Uri.parse(
      'https://www.googleapis.com/books/v1/volumes?q=harrypotter',
    );

    final response = await http.get(
      url,
    );

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    final booksList = responseJson['items'] as List;

    final books = booksList
        .map<Book>(
          (book) => Book.fromJson(book as Map<String, dynamic>),
        )
        .toList();

    print(books);

    return books;
  }

  // Future<List<Post>> getPosts() async {
  //   final url = Uri.parse(
  //     'https://my-json-server.typicode.com/typicode/demo/posts',
  //   );

  //   final response = await http.get(url);

  //   final responseJson = jsonDecode(response.body) as List;

  //   final postsList = responseJson
  //       .map<Post>(
  //         (post) => Post.fromJson(post as Map<String, dynamic>),
  //       )
  //       .toList();

  //   print(postsList);

  //   return postsList;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: const Center(child: CounterText()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: getBooks,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.headline1);
  }
}
