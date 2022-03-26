import 'package:equatable/equatable.dart';

class BookDetail extends Equatable {
  BookDetail({
    required this.id,
    required this.thumbnail,
    required this.authors,
    required this.description,
    required this.publisher,
    required this.title,
  });

  final String id;
  final String thumbnail;
  final List<String> authors;
  final String description;
  final String publisher;
  final String title;

  @override
  List<Object> get props => [
        id,
        thumbnail,
        authors,
        description,
        publisher,
        title,
      ];

  @override
  bool get stringify => true;
}
