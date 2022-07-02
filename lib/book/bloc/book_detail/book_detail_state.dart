part of 'book_detail_bloc.dart';

enum BookDetailStatus { initial, loading, success, failure }

class BookDetailState extends Equatable {
  const BookDetailState({
    this.status = BookDetailStatus.initial,
    this.book,
    this.error = '',
  });

  final BookDetailStatus status;
  final Book? book;
  final String error;

  BookDetailState copyWith({
    BookDetailStatus? status,
    Book? book,
    String? error,
  }) {
    return BookDetailState(
      status: status ?? this.status,
      book: book ?? this.book,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, book, error];
}
