import 'package:bloc/bloc.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:equatable/equatable.dart';

part 'book_detail_event.dart';
part 'book_detail_state.dart';

class BookDetailBloc extends Bloc<BookDetailEvent, BookDetailState> {
  BookDetailBloc({
    required BookService bookService,
  })  : _bookService = bookService,
        super(
          const BookDetailState(),
        ) {
    on<GetBookDetailEvent>(_getBookDetailEvent);
  }

  final BookService _bookService;

  Future<void> _getBookDetailEvent(
    GetBookDetailEvent event,
    Emitter<BookDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BookDetailStatus.loading,
      ),
    );

    await emit.forEach<BookDetail>(
      Stream.fromFuture(
        _bookService.getBook(event.id),
      ),
      onData: (book) => state.copyWith(
        status: BookDetailStatus.success,
        book: book,
      ),
      onError: (error, _) => state.copyWith(
        status: BookDetailStatus.failure,
        error: error.toString(),
      ),
    );
  }
}
