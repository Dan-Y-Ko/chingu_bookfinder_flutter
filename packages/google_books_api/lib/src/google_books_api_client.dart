import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../google_books_api.dart';
import './models/book_volume.dart';

class BookSearchRequestFailure implements Exception {}

class BookNotFoundFailure implements Exception {}

class BookVolumeRequestFailure implements Exception {}

class BookVolumeNotFoundFailure implements Exception {}

class GoogleBooksApiClient {
  GoogleBooksApiClient({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;
  static const _baseUrl = 'www.googleapis.com';

  Future<List<Book>> getBooks(String query) async {
    final url = Uri.https(
      _baseUrl,
      '/books/v1/volumes',
      <String, String>{'q': query},
    );

    final response = await _httpClient.get(
      url,
    );

    if (response.statusCode != 200) {
      throw BookSearchRequestFailure();
    }

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    final booksList = responseJson['items'] as List;

    if (booksList.isEmpty) {
      throw BookNotFoundFailure();
    }

    final books = booksList
        .map<Book>(
          (dynamic book) => Book.fromJson(book as Map<String, dynamic>),
        )
        .toList();

    return books;
  }

  Future<BookVolume> getBook(String volume) async {
    final url = Uri.https(
      _baseUrl,
      '/books/v1/volumes/$volume',
    );

    final response = await _httpClient.get(
      url,
    );

    if (response.statusCode != 200) {
      throw BookVolumeRequestFailure();
    }
    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    if (responseJson.isEmpty) {
      throw BookVolumeNotFoundFailure();
    }

    return BookVolume.fromJson(responseJson);
  }
}
