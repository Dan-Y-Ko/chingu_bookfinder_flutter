part of 'book_bloc.dart';

enum BookStateStatus { initial, loading, success, failure }

class BookState extends Equatable {
  const BookState({
    this.status = BookStateStatus.initial,
    this.books = const [],
    this.error = '',
  });

  final BookStateStatus status;
  final List<Book> books;
  final String error;

  BookState copyWith({
    BookStateStatus? status,
    List<Book>? books,
    String? error,
  }) {
    return BookState(
      status: status ?? this.status,
      books: books ?? this.books,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [status, books, error];
}
