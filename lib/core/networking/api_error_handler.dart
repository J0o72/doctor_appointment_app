// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioException.connectionError:
          return ApiErrorModel(message: "Connect to server failed");

        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connect time out with the server");

        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: "send time out with the server");

        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: "receive time out with the server");

        case DioExceptionType.badResponse:
          return handleError(error.response!.data);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was cancelled ");

        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection Error to server ");

        case DioExceptionType.unknown:
          return ApiErrorModel(
            message: "Connect to server failed due to the internet",
          );
        case DioExceptionType.badCertificate:
          return ApiErrorModel(message: "Bad Certificate");
      }
    } else {
      return ApiErrorModel(message: "Unknown Error Occured");
    }
  }
}

ApiErrorModel handleError(dynamic data) {
  return ApiErrorModel(
    message: data['message'] ?? 'Unknown Error Occured',
    code: data['code'],
    errors: data['data'],
  );
}
