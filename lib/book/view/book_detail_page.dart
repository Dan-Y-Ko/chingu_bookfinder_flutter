import 'package:chingu_bookfinder_flutter/book/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({required this.id, Key? key}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          context.go('/');
        }),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: BlocBuilder<BookDetailBloc, BookDetailState>(
          builder: (context, state) {
            print(state.status);
            if (state.status == BookDetailStatus.initial) {
              context.read<BookDetailBloc>().add(
                    GetBookDetailEvent(
                      id: id,
                    ),
                  );
            }

            if (state.status == BookDetailStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.status == BookDetailStatus.success) {
              return Center(
                child: Text(state.book!.title),
              );
            }

            if (state.status == BookDetailStatus.failure) {
              return Center(
                child: Text(state.error),
              );
            }

            return const SizedBox(width: 0, height: 0);
          },
        ),
      ),
    );
  }
}
