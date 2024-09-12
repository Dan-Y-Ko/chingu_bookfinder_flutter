import 'dart:async';
import 'dart:io';

import 'package:base_api/base_api.dart';
import 'package:chingu_bookfinder_flutter/book/book.dart' show Book, BookDetail;
import 'package:google_books_api/google_books_api.dart' hide Book;
import 'package:html/parser.dart' show parse;

class BookService {
  BookService({GoogleBooksApiClient? googleBooksApiClient})
      : _googleBooksApiClient = googleBooksApiClient ?? GoogleBooksApiClient();

  final GoogleBooksApiClient _googleBooksApiClient;

  Future<List<Book>> getBooks(String query) async {
    try {
      final books = await _googleBooksApiClient.getBooks(query);

      final bookList = books
          .map(
            (book) => Book(
              id: book.id!,
              thumbnail: book.volumeInfo!.imageLinks?.thumbnail ??
                  'https://wtwp.com/wp-content/uploads/2015/06/placeholder-image.png',
              authors: book.volumeInfo!.authors ?? [],
              publisher: book.volumeInfo!.publisher ?? '',
              title: book.volumeInfo!.title ?? '',
            ),
          )
          .toList();

      return bookList;
    } on SocketException {
      rethrow;
    } on AppException {
      rethrow;
    }
  }

  Future<BookDetail> getBook(String volume) async {
    try {
      final book = await _googleBooksApiClient.getBook(volume);

      return BookDetail(
        id: book.id!,
        thumbnail: book.volumeInfo!.imageLinks?.thumbnail ??
            'https://wtwp.com/wp-content/uploads/2015/06/placeholder-image.png',
        authors: book.volumeInfo?.authors ?? [],
        description: book.volumeInfo?.description != null
            ? parse(book.volumeInfo!.description).body!.text
            : '',
        publisher: book.volumeInfo!.publisher ?? '',
        title: book.volumeInfo!.title ?? '',
      );
    } on SocketException {
      rethrow;
    } on AppException {
      rethrow;
    }
  }
}
