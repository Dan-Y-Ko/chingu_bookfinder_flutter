import 'dart:convert';

import 'package:chingu_bookfinder_flutter/counter/models/book.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  late Future<List<Book>> books;

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
          (dynamic book) => Book.fromJson(book as Map<String, dynamic>),
        )
        .toList();

    return books;
  }

  @override
  void initState() {
    super.initState();

    books = getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          children: [
            FutureBuilder<List<Book>>(
              future: books,
              builder:
                  (BuildContext context, AsyncSnapshot<List<Book>> snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * .8,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        final snap = snapshot.data![index].volumeInfo!;
                        const placeholderImage =
                            'https://wtwp.com/wp-content/uploads/2015/06/placeholder-image.png';

                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Card(
                            child: SizedBox(
                              height: 200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Image.network(
                                      snap.imageLinks?.thumbnail ??
                                          placeholderImage,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            snap.title ?? 'No Title',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'By: ${snap.authors?[0]}',
                                          ),
                                          Text(
                                            'Published by: ${snap.publisher}',
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: const Text('View Details'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
