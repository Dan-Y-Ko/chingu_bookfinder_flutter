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
            if (state.status == BookDetailStatus.loading) {
              return const Loading();
            }

            if (state.status == BookDetailStatus.success) {
              return const BookDetailCard();
            }

            if (state.status == BookDetailStatus.failure) {
              return ErrorScreen(
                error: state.error,
              );
            }

            return const SizedBox(width: 0, height: 0);
          },
        ),
      ),
    );
  }
}
