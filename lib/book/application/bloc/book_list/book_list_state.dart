part of 'book_list_bloc.dart';

enum BookListStatus { initial, loading, success, failure }

class BookListState extends Equatable {
  const BookListState({
    this.status = BookListStatus.initial,
    this.books = const [],
    this.error = '',
  });

  final BookListStatus status;
  final List<Book> books;
  final String error;

  BookListState copyWith({
    BookListStatus? status,
    List<Book>? books,
    String? error,
  }) {
    return BookListState(
      status: status ?? this.status,
      books: books ?? this.books,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [status, books, error];
}
