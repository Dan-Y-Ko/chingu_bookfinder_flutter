import 'dart:io';
import 'package:base_api/base_api.dart';
import 'package:bloc/bloc.dart';
import 'package:book_repository/book_repository.dart';
import 'package:equatable/equatable.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc({
    required BookRepository bookRepository,
  })  : _bookRepository = bookRepository,
        super(const BookState()) {
    on<GetBooksEvent>(_getBooksEvent);

    // on<GetBookDetailEvent>(_getBookDetailEvent);
  }

  final BookRepository _bookRepository;

  Future<void> _getBooksEvent(
    GetBooksEvent event,
    Emitter<BookState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BookStateStatus.loading,
      ),
    );

    await emit.forEach<List<Book>>(
      Stream.fromFuture(
        _bookRepository.getBooks(event.query),
      ),
      onData: (books) => state.copyWith(
        status: BookStateStatus.success,
        books: books,
      ),
      onError: (error, _) => state.copyWith(
        status: BookStateStatus.failure,
        error: error.toString(),
      ),
    );
  }

  // Future<void> _getBookDetailEvent() {}
}
