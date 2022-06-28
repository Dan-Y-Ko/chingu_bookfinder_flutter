part of 'book_bloc.dart';

enum BookStateStatus { initial, loading, success, failure }

class BookState extends Equatable {
  const BookState({
    this.status = BookStateStatus.initial,
    this.books = const [],
  });

  final BookStateStatus status;
  final List<Book> books;

  BookState copyWith({
    BookStateStatus? status,
    List<Book>? books,
  }) {
    return BookState(
      status: status ?? this.status,
      books: books ?? this.books,
    );
  }

  @override
  List<Object> get props => [status, books];
}
