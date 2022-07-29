import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SearchInput(),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: BlocBuilder<BookListBloc, BookListState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case BookListStatus.initial:
                        return const BookListEmpty();
                      case BookListStatus.loading:
                        return const Loading();
                      case BookListStatus.success:
                        return const BookList();
                      case BookListStatus.failure:
                        return ErrorScreen(
                          error: state.error,
                        );
                    }
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  context.read<GoogleAuthBloc>().add(
                        SignOutEvent(),
                      );
                },
                child: const Text('Sign Out'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
