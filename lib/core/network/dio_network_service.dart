import 'package:dio/dio.dart';

class DioNetworkService {
  static Dio? _dio;

  DioNetworkService._();

  static Dio get instance {
    _dio ??= Dio(BaseOptions(baseUrl: 'https://soyich.com/app/'));

    return _dio!;
  }
}
