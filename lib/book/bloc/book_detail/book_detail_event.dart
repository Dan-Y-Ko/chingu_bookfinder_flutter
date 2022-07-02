part of 'book_detail_bloc.dart';

abstract class BookDetailEvent extends Equatable {
  const BookDetailEvent();
}

class GetBookDetailEvent extends BookDetailEvent {
  const GetBookDetailEvent({
    required this.id,
  });

  final String id;

  @override
  List<Object> get props => [id];
}
