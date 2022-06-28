import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/book_bloc.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<BookBloc, BookState>(
              builder: (context, state) {
                switch (state.status) {
                  case BookStateStatus.initial:
                    context.read<BookBloc>().add(
                          const GetBooksEvent(
                            query: 'harrypotter',
                          ),
                        );
                    return const SizedBox(width: 0, height: 0);
                  case BookStateStatus.loading:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  case BookStateStatus.success:
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * .8,
                      child: ListView.builder(
                        itemCount: state.books.length,
                        itemBuilder: (BuildContext context, int index) {
                          final book = state.books[index];

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
                                        book.thumbnail,
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
                                              book.title,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'By: ${book.authors[0]}',
                                            ),
                                            Text(
                                              'Published by: ${book.publisher}',
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
                  case BookStateStatus.failure:
                    return Center(
                      child: Text(state.error),
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
