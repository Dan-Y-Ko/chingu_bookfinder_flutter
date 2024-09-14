import 'package:chingu_bookfinder_flutter/app/routes.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart'
    show BookDetailBloc, BookListBloc, BookListState, GetBookDetailEvent;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: BlocBuilder<BookListBloc, BookListState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              final book = state.books[index];

              return Card(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                book.authors.isNotEmpty
                                    ? 'By ${book.authors[0]}'
                                    : 'No authors',
                              ),
                              Text(
                                book.publisher.isNotEmpty
                                    ? 'Published by: ${book.publisher}'
                                    : '',
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<BookDetailBloc>().add(
                                        GetBookDetailEvent(
                                          id: book.id,
                                        ),
                                      );

                                  BookDetailRoute(id: book.id).go(context);
                                },
                                child: const Text('View Details'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
