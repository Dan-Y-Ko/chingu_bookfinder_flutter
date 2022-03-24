import 'dart:async';

import 'package:google_books_api/google_books_api.dart' hide Book;
import 'package:book_repository/book_repository.dart';

class BookRepository {
  BookRepository({GoogleBooksApiClient? googleBooksApiClient})
      : _googleBooksApiClient = googleBooksApiClient ?? GoogleBooksApiClient();

  final GoogleBooksApiClient _googleBooksApiClient;

  Future<List<Book>> getBooks(String query) async {
    final books = await _googleBooksApiClient.getBooks(query);

    return books
        .map(
          (book) => Book(
            id: book.id!,
            thumbnail: book.volumeInfo!.imageLinks!.thumbnail!,
            authors: book.volumeInfo!.authors!,
            description: book.volumeInfo!.description!,
            publisher: book.volumeInfo!.publisher!,
            title: book.volumeInfo!.title!,
          ),
        )
        .toList();
  }
}
