import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocBuilder<BookListBloc, BookListState>(
              builder: (context, state) {
                switch (state.status) {
                  case BookListStatus.initial:
                    context.read<BookListBloc>().add(
                          const GetBooksEvent(
                            query: 'harrypotter',
                          ),
                        );
                    return const SizedBox(width: 0, height: 0);
                  case BookListStatus.loading:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  case BookListStatus.success:
                    return const BookList();
                  case BookListStatus.failure:
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
