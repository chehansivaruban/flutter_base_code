import 'package:dio/dio.dart';

class NetworkExceptions implements Exception {
  final String message;

  const NetworkExceptions(this.message);

  factory NetworkExceptions.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return const NetworkExceptions('Connection timeout');
      case DioExceptionType.sendTimeout:
        return const NetworkExceptions('Send timeout');
      case DioExceptionType.receiveTimeout:
        return const NetworkExceptions('Receive timeout');
      case DioExceptionType.badResponse:
        return NetworkExceptions.fromStatusCode(
          error.response?.statusCode ?? 500,
        );
      case DioExceptionType.cancel:
        return const NetworkExceptions('Request cancelled');
      default:
        return const NetworkExceptions('Something went wrong');
    }
  }

  factory NetworkExceptions.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return const NetworkExceptions('Bad request');
      case 401:
        return const NetworkExceptions('Unauthorized');
      case 403:
        return const NetworkExceptions('Forbidden');
      case 404:
        return const NetworkExceptions('Not found');
      case 500:
        return const NetworkExceptions('Internal server error');
      default:
        return const NetworkExceptions('Something went wrong');
    }
  }
}
