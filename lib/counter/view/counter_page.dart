// // Copyright (c) 2021, Very Good Ventures
// // https://verygood.ventures
// //
// // Use of this source code is governed by an MIT-style
// // license that can be found in the LICENSE file or at
// // https://opensource.org/licenses/MIT.

// import 'dart:convert';

// import 'package:chingu_bookfinder_flutter/counter/counter.dart';
// import 'package:chingu_bookfinder_flutter/counter/models/book.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;

// class CounterPage extends StatelessWidget {
//   const CounterPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CounterCubit(),
//       child: const CounterView(),
//     );
//   }
// }

// class CounterView extends StatelessWidget {
//   const CounterView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Counter')),
//       body: const Center(child: CounterText()),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {},
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(height: 8),
//           FloatingActionButton(
//             onPressed: () => context.read<CounterCubit>().decrement(),
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CounterText extends StatefulWidget {
//   const CounterText({Key? key}) : super(key: key);

//   @override
//   State<CounterText> createState() => _CounterTextState();
// }

// class _CounterTextState extends State<CounterText> {
//   late Future<List<Book>> books;

//   Future<List<Book>> getBooks() async {
//     final url = Uri.parse(
//       'https://www.googleapis.com/books/v1/volumes?q=harrypotter',
//     );

//     final response = await http.get(
//       url,
//     );

//     final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

//     final booksList = responseJson['items'] as List;

//     final books = booksList
//         .map<Book>(
//           (dynamic book) => Book.fromJson(book as Map<String, dynamic>),
//         )
//         .toList();

//     return books;
//   }

//   @override
//   void initState() {
//     super.initState();

//     books = getBooks();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Book>>(
//       future: books,
//       builder: (BuildContext context, AsyncSnapshot<List<Book>> snapshot) {
//         if (snapshot.hasData) {
//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Text('${snapshot.data![index].volumeInfo!.title}');
//             },
//           );
//         }

//         return const Center(child: CircularProgressIndicator());
//       },
//     );
//   }
// }
