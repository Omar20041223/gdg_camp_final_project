import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            'Connection timed out. Please check your internet and try again.');
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            'Request timed out. Check your connection and try again.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            'Server response timed out. Check your connection or try again later.');
      case DioExceptionType.badCertificate:
        return ServerFailure('Oops There was an Error, Please try again');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('The request was canceled. Please try again.');
      case DioExceptionType.connectionError:
        return ServerFailure(
            'Unable to connect. Please check your internet connection and try again.');
      case DioExceptionType.unknown:
        if (dioException.message != null &&
            dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (response == null) {
      return ServerFailure('Unknown error occurred, please try again.');
    }

    if (response is Map && response.isNotEmpty) {
      final firstKey = response.keys.first;
      final firstValue = response[firstKey];

      if (firstValue is List && firstValue.isNotEmpty) {
        return ServerFailure(firstValue[0].toString()); // Extract the first error message from the list
      } else if (firstValue is String) {
        return ServerFailure(firstValue); // Use the string error message directly
      }
    } else if (response is String) {
      return ServerFailure(response); // Directly use the error string
    }

    switch (statusCode) {
      case 404:
        return ServerFailure('Your request was not found, please try later.');
      case 500:
        return ServerFailure('There is a problem with the server, please try later.');
      case 400:
      case 401:
      case 403:
        return ServerFailure('Unauthorized request, please check your credentials.');
      case 555:
        return ServerFailure('Error from the backend.');
      default:
        return ServerFailure('There was an error, please try again.');
    }
  }
}
