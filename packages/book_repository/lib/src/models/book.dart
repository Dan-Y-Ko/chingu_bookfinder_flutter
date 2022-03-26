import 'package:equatable/equatable.dart';

class Book extends Equatable {
  Book({
    required this.id,
    required this.thumbnail,
    required this.authors,
    required this.publisher,
    required this.title,
  });

  final String id;
  final String thumbnail;
  final List<String> authors;
  final String publisher;
  final String title;

  @override
  List<Object> get props => [
        id,
        thumbnail,
        authors,
        publisher,
        title,
      ];

  @override
  String toString() {
    return 'Book(id: $id, thumbnail: $thumbnail, authors: $authors, publisher: $publisher, title: $title)';
  }
}
