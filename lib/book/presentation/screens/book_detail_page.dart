import 'package:chingu_bookfinder_flutter/book/book.dart'
    show BookDetailBloc, BookDetailCard, BookDetailState, BookDetailStatus;
import 'package:chingu_bookfinder_flutter/widgets/widgets.dart'
    show ErrorScreen, Loading;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: BlocBuilder<BookDetailBloc, BookDetailState>(
          builder: (context, state) {
            return AppBar(
              centerTitle: true,
              title: Text(state.book?.title ?? ''),
            );
          },
        ),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: BlocBuilder<BookDetailBloc, BookDetailState>(
          builder: (context, state) {
            switch (state.status) {
              case BookDetailStatus.initial:
                return const SizedBox();
              case BookDetailStatus.loading:
                return const Loading();
              case BookDetailStatus.success:
                return const BookDetailCard();
              case BookDetailStatus.failure:
                return ErrorScreen(
                  error: state.error,
                );
            }
          },
        ),
      ),
    );
  }
}
