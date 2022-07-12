import 'package:bloc/bloc.dart';
import 'package:chingu_bookfinder_flutter/book/repository/main.dart';
import 'package:equatable/equatable.dart';

part 'book_list_event.dart';
part 'book_list_state.dart';

class BookListBloc extends Bloc<BookListEvent, BookListState> {
  BookListBloc({
    required BookRepository bookRepository,
  })  : _bookRepository = bookRepository,
        super(const BookListState()) {
    on<GetBooksEvent>(_getBooksEvent);
  }

  final BookRepository _bookRepository;

  Future<void> _getBooksEvent(
    GetBooksEvent event,
    Emitter<BookListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BookListStatus.loading,
      ),
    );

    await emit.forEach<List<Book>>(
      Stream.fromFuture(
        _bookRepository.getBooks(event.query),
      ),
      onData: (books) => state.copyWith(
        status: BookListStatus.success,
        books: books,
      ),
      onError: (error, _) => state.copyWith(
        status: BookListStatus.failure,
        error: error.toString(),
      ),
    );
  }
}
