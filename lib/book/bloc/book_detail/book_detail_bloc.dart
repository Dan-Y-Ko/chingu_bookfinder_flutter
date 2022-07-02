import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'book_detail_event.dart';
part 'book_detail_state.dart';

class BookDetailBloc extends Bloc<BookDetailEvent, BookDetailState> {
  BookDetailBloc() : super(BookDetailInitial()) {
    on<BookDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
