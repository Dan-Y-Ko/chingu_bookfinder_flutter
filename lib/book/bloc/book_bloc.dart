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

    final books = await _bookRepository.getBooks(event.query);

    emit(
      state.copyWith(
        status: BookStateStatus.success,
        books: books,
      ),
    );
  }

  // Future<void> _getBookDetailEvent() {}
}
