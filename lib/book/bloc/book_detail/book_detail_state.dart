part of 'book_detail_bloc.dart';

enum BookDetailStatus { initial, loading, success, failure }

abstract class BookDetailState extends Equatable {
  const BookDetailState({
    this.status = BookDetailStatus.initial,
    this.book,
    this.error = '',
  });

  final BookDetailStatus status;
  final Book? book;
  final String error;

  @override
  List<Object?> get props => [status, book, error];
}
