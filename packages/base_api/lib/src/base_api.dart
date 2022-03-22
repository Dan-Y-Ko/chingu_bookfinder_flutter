import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import './custom_api_exception.dart';

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
    dynamic responseJson;

    try {
      final fullUrl = Uri.https(
        baseUrl,
        '$url',
        query,
      );

      final response = await _httpClient.get(fullUrl);

      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body) as Map<String, dynamic>;
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorizedException(response.body);
      case 500:
      default:
        throw FetchDataException(
            '''Error occured while Communication with Server with StatusCode : 
          ${response.statusCode}''');
    }
  }
}
