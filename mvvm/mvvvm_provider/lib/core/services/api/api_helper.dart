import 'package:dio/dio.dart';
import '../../../utils/app_constants.dart';
import 'base_response.dart';
import 'network_exceptions.dart';

class ApiHelper {
  final Dio _dio;

  ApiHelper({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.options = BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );

    _dio.interceptors.addAll([
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
      ),
    ]);
  }

  Future<dynamic> request({
    required HttpMethod method,
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool requiresAuth = true,
  }) async {
    try {
      final response = await _dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method.name.toUpperCase(),
          headers: headers,
        ),
      );

      return BaseResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw NetworkExceptions.fromDioError(e);
    }
  }
}

enum HttpMethod { get, post, put, delete, patch }
