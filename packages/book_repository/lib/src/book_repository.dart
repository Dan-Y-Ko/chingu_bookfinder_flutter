import 'dart:async';

import 'package:google_books_api/google_books_api.dart' hide Book;
import 'package:book_repository/book_repository.dart';

class BookRepository {
  BookRepository({GoogleBooksApiClient? googleBooksApiClient})
      : _googleBooksApiClient = googleBooksApiClient ?? GoogleBooksApiClient();

  final GoogleBooksApiClient _googleBooksApiClient;

  // Future<Book> getBooks(String query) async {
  //   final books = await _googleBooksApiClient.getBooks(query);

  //   books.map((book) => Book())
  // }
}
