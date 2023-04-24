import 'package:dio/dio.dart';

class DioConfig {
  // Dio configration
  static Dio createRequest() {
    Dio? dio = Dio(BaseOptions(
        validateStatus: (int? statusCode) {
          if (statusCode != null) {
            if (statusCode >= 100 && statusCode <= 599) {
              return true;
            } else {
              return false;
            }
          } else {
            return false;
          }
        },
        receiveDataWhenStatusError: true));

    // Time out congifration
    dio.options.receiveTimeout = const Duration(seconds: 5);
    dio.options.sendTimeout = const Duration(seconds: 5);
    dio.options.connectTimeout = const Duration(seconds: 5);
    return dio;
  }
}