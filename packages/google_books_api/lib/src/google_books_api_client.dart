import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:base_api/base_api.dart';

import '../google_books_api.dart';
import './models/book_volume.dart';

class GoogleBooksApiClient {
  GoogleBooksApiClient({
    BaseApi? baseApi,
  }) : _baseApi = baseApi ?? BaseApi();

  final BaseApi _baseApi;
  static const _baseUrl = 'www.googleapis.com';
  static const _url = '/books/v1/volumes';

  Future<List<Book>> getBooks(String query) async {
    try {
      final response = await _baseApi.get(
        _baseUrl,
        _url,
        {'q': query},
      ) as http.Response;

      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

      final booksList = responseJson['items'] as List;

      final books = booksList
          .map<Book>(
            (dynamic book) => Book.fromJson(book as Map<String, dynamic>),
          )
          .toList();

      return books;
    } on SocketException {
      rethrow;
    } on AppException {
      rethrow;
    }
  }

  Future<BookVolume> getBook(String volume) async {
    try {
      final response = await _baseApi.get(
        _baseUrl,
        '$_url/$volume',
        {},
      ) as Map<String, dynamic>;

      return BookVolume.fromJson(response);
    } catch (e) {
      return Future.error(e);
    }
  }
}
