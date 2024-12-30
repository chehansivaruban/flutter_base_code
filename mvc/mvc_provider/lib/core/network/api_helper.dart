import 'package:dio/dio.dart';
import '../../controllers/app_state_controller.dart';
import '../../models/network/base_request_response.dart';
import '../config/config.dart';
import '../utils/log_utils.dart';

class ApiHelper {
  ApiHelper({
    required this.dio,
    required this.appStateController,
  }) {
    _logUtils.log("init");
    dio.options.baseUrl = Config.baseUrl;
  }

  final AppStateController appStateController;
  final Dio dio;

  static final _logUtils = LogUtils(
    featureName: 'ApiHelper',
    printLog: true,
  );

  Future<BaseResponse> request(
    HttpMethod method,
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final options = Options(
        method: method.name.toUpperCase(),
        headers: {
          if (appStateController.accessToken != null)
            'Authorization': 'Bearer ${appStateController.accessToken}',
          ...?headers,
        },
      );

      final res = await dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      return _handleResponse(res);
    } on DioException catch (e) {
      _logUtils.log("DioException encountered: ${e.message}");
      return _handleError(e);
    } catch (e) {
      _logUtils.log("Exception encountered: $e");
      return BaseResponse(
        isSuccess: false,
        code: 999,
        error: Config.isDebugMode ? e.toString() : 'Unknown Error',
      );
    }
  }

  BaseResponse _handleResponse(Response res) {
    if (res.statusCode! >= 200 && res.statusCode! < 300) {
      return BaseResponse.fromJson(res.data);
    }
    return _handleError(res);
  }

  BaseResponse _handleError(dynamic error) {
    final statusCode = error is Response
        ? error.statusCode
        : error is DioException
            ? error.response?.statusCode
            : 0;

    switch (statusCode) {
      case 401:
      case 403:
        return BaseResponse(
          isSuccess: false,
          code: statusCode!,
          error: 'Not authenticated',
        );
      case 500:
        return BaseResponse(
          isSuccess: false,
          code: statusCode!,
          error: 'Server error',
        );
      default:
        return BaseResponse(
          isSuccess: false,
          code: statusCode ?? 0,
          error: 'Unknown error occurred',
        );
    }
  }
}

enum HttpMethod {
  get,
  post,
  put,
  patch,
}
