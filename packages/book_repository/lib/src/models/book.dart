import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book extends Equatable {
  const Book({
    required this.id,
    required this.volumeInfo,
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);

  final String id;
  final VolumeInfo volumeInfo;

  @override
  List<Object> get props => [id, volumeInfo];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class VolumeInfo extends Equatable {
  const VolumeInfo({
    required this.authors,
    required this.description,
    this.imageLinks,
    required this.publisher,
    required this.title,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);

  @JsonKey(defaultValue: [''])
  final List<String> authors;
  final String description;
  final ImageLinks? imageLinks;
  @JsonKey(defaultValue: '')
  final String publisher;
  final String title;

  @override
  List<Object?> get props =>
      [authors, description, imageLinks, publisher, title];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class ImageLinks extends Equatable {
  const ImageLinks({
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);

  Map<String, dynamic> toJson() => _$ImageLinksToJson(this);

  final String? thumbnail;

  @override
  List<Object?> get props => [thumbnail];

  @override
  String toString() => toJson().toString();
}
