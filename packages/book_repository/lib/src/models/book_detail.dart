import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_detail.g.dart';

@JsonSerializable()
class BookDetail extends Equatable {
  const BookDetail({
    required this.id,
    required this.thumbnail,
    required this.authors,
    required this.description,
    required this.publisher,
    required this.title,
  });

  factory BookDetail.fromJson(Map<String, dynamic> json) =>
      _$BookDetailFromJson(json);

  Map<String, dynamic> toJson() => _$BookDetailToJson(this);

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
