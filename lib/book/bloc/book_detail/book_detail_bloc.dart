import 'package:bloc/bloc.dart';
import 'package:book_repository/book_repository.dart';
import 'package:equatable/equatable.dart';

part 'book_detail_event.dart';
part 'book_detail_state.dart';

class BookDetailBloc extends Bloc<BookDetailEvent, BookDetailState> {
  BookDetailBloc({
    required BookRepository bookRepository,
  })  : _bookRepository = bookRepository,
        super(
          const BookDetailState(),
        ) {
    on<GetBookDetailEvent>(_getBookDetailEvent);
  }

  final BookRepository _bookRepository;

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
        _bookRepository.getBook(event.id),
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
