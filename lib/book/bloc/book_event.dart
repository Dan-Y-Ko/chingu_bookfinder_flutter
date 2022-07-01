part of 'book_bloc.dart';

abstract class BookEvent extends Equatable {
  const BookEvent();
}

class GetBooksEvent extends BookEvent {
  const GetBooksEvent({
    required this.query,
  });

  final String query;

  @override
  List<Object> get props => [query];
}

class GetBookDetailEvent extends BookEvent {
  const GetBookDetailEvent({
    required this.id,
  });

  final String id;

  @override
  List<Object> get props => [id];
}
