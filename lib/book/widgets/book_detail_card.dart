import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailCard extends StatelessWidget {
  const BookDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailBloc, BookDetailState>(
      builder: (context, state) {
        final book = state.book;

        if (state.book != null) {
          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Card(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 450,
                      width: double.infinity,
                      child: Image.network(
                        book!.thumbnail,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      book.authors.isNotEmpty
                          ? 'By ${book.authors[0]}'
                          : 'No authors',
                    ),
                    Text(book.publisher),
                    Text(book.description),
                  ],
                ),
              ),
            ),
          );
        }

        return const SizedBox(width: 0, height: 0);
      },
    );
  }
}
