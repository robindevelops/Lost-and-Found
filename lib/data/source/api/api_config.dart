import 'package:authentication/data/source/api/api_path.dart';
import 'package:dio/dio.dart';

class ApiConfig {
  static final ApiConfig _singleton = ApiConfig._internal();
  factory ApiConfig() => _singleton;

  late Dio dio;

  ApiConfig._internal() {
    //creates the singleton instance
    dio = Dio();

    // dio.interceptors.add(LogInterceptor(requestHeader: true),);
    // Set default configs
    dio.options.baseUrl = ApiPaths.baseURL;
    dio.options.connectTimeout = const Duration(seconds: 10); //10s
    dio.options.receiveTimeout = const Duration(seconds: 10);
  }
}
