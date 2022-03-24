// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      id: json['id'] as String,
      thumbnail: json['thumbnail'] as String? ?? '',
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [''],
      description: json['description'] as String,
      publisher: json['publisher'] as String? ?? '',
      title: json['title'] as String,
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'authors': instance.authors,
      'description': instance.description,
      'publisher': instance.publisher,
      'title': instance.title,
    };
