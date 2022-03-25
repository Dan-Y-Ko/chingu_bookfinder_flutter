// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetail _$BookDetailFromJson(Map<String, dynamic> json) => BookDetail(
      id: json['id'] as String,
      thumbnail: json['thumbnail'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      publisher: json['publisher'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$BookDetailToJson(BookDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'authors': instance.authors,
      'description': instance.description,
      'publisher': instance.publisher,
      'title': instance.title,
    };
