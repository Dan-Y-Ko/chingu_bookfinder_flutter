class AppException implements Exception {
  AppException(this.message, this.prefix);

  final String? message;
  final String? prefix;

  @override
  String toString() {
    return '$prefix$message';
  }
}

class FetchDataException extends AppException {
  FetchDataException(String? message)
      : super(message, 'Error During Communication: ');
}

class BadRequestException extends AppException {
  BadRequestException(String? message) : super(message, 'Invalid Request: ');
}

class UnauthorizedException extends AppException {
  UnauthorizedException(String? message) : super(message, 'Unauthorised: ');
}
