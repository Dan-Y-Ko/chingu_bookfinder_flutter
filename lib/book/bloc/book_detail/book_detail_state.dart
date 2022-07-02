part of 'book_detail_bloc.dart';

abstract class BookDetailState extends Equatable {
  const BookDetailState();
  
  @override
  List<Object> get props => [];
}

class BookDetailInitial extends BookDetailState {}
