import 'package:chef_app/core/errors/error_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  ServerException({required this.errorModel});
}

class BadRequestException extends ServerException {
  BadRequestException({required super.errorModel});
}
class UnauthorizedException extends ServerException {
  UnauthorizedException({required super.errorModel});
}
class NotFoundException extends ServerException {
  NotFoundException({required super.errorModel});
}
class ForbiddenException extends ServerException {
  ForbiddenException({required super.errorModel});
}
class ConflictException extends ServerException {
  ConflictException({required super.errorModel});
}
class CancelException extends ServerException {
  CancelException({required super.errorModel});
}
class ConnectionException extends ServerException {
  ConnectionException({required super.errorModel});
}
