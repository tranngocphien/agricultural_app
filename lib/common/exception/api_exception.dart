import 'dart:io';

class ApiException implements Exception {
  final String message;
  final int status;

  ApiException({required this.message, required this.status});
}

class UnauthorizedApiException extends ApiException {
  UnauthorizedApiException({required String message})
      : super(message: message, status: HttpStatus.unauthorized);
}

class BadRequestException extends ApiException {
  BadRequestException({required String message})
      : super(message: message, status: HttpStatus.badRequest);
}

class NotFoundException extends ApiException {
  NotFoundException({required String message})
      : super(message: message, status: HttpStatus.notFound);
}

class ServerErrorException extends ApiException {
  ServerErrorException({required String message})
      : super(message: message, status: HttpStatus.internalServerError);
}