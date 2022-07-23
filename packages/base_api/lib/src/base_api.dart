import 'dart:async';
import 'dart:io';

import 'package:base_api/base_api.dart';
import 'package:http/http.dart' as http;

class BaseApi {
  BaseApi({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<dynamic> get(
    String baseUrl,
    String url,
    Map<String, String>? query,
  ) async {
    try {
      final fullUrl = Uri.https(
        baseUrl,
        '$url',
        query,
      );

      final response = await _httpClient.get(fullUrl);

      return _returnResponse(response);
    } on SocketException {
      throw AppException('No Internet connection');
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw AppException('Status Code: 400 Bad Request made');
      case 401:
        throw AppException('Status Code: 401 Unauhtorized');
      case 403:
        throw AppException('Status Code: 403 Unauhtorized');
      case 404:
        throw AppException('Status Code: 404 Resource not found');
      default:
        throw AppException(
          'Status Code: ${response.statusCode}. Something went wrong',
        );
    }
  }
}
