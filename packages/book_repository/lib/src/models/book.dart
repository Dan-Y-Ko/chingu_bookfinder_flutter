import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book extends Equatable {
  const Book({
    required this.id,
    required this.thumbnail,
    required this.authors,
    required this.publisher,
    required this.title,
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);

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
  bool get stringify => true;
}
