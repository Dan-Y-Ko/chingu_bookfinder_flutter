import 'package:http/http.dart' as http;

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
}
