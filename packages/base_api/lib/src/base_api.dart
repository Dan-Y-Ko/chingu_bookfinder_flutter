import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import './custom_api_exception.dart';

class BaseApi {
  Future<dynamic> get(
    String baseUrl,
    String url,
    Map<String, String> query,
  ) async {
    dynamic responseJson;

    try {
      final fullUrl = Uri.https(
        baseUrl,
        '$url',
        <String, String>{'query': '$query'},
      );

      final response = await http.get(fullUrl);

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
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorizedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            '''Error occured while Communication with Server with StatusCode : 
          ${response.statusCode}''');
    }
  }
}
