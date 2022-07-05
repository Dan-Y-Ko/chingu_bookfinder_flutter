import 'package:chingu_bookfinder_flutter/book/bloc/bloc.dart';
import 'package:chingu_bookfinder_flutter/book/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/widgets.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({required this.id, Key? key}) : super(key: key);

  final String id;

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
