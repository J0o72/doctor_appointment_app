import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  // private constructor to prevent instantiation from outside the class
  DioFactory._();

  static Dio? dio;

  // method to get the dio instance, if it is null, create a new one and return it, otherwise return the existing one (singleton pattern)
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeout;
      dio!.options.receiveTimeout = timeout;

      addHeaders();
      addDioInterceptors();

      return dio!;
    } else {
      return dio!;
    }
  }

  // method to show me in console the request and response of the api calls using the pretty_dio_logger package
  static void addDioInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void addHeaders() {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzgwMzQ3MjU5LCJleHAiOjE3ODA0MzM2NTksIm5iZiI6MTc4MDM0NzI1OSwianRpIjoidFlkaURPalhRRWdzVEhWaiIsInN1YiI6IjcwOTQiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.UIxHCoZt2f_tM7e_BXz-5KKMnOEKIFiMa6bD6lvfx9I',
    };
  }
}
