import 'package:dio/dio.dart';
import 'package:doc_appointment_app/core/helpers/shared_pref_helper.dart';
import 'package:doc_appointment_app/core/helpers/shared_pref_keys.dart';
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
          'Bearer ${SharedPrefHelper.getString(SharedPrefKeys.userToken)}',
    };
  }
}
