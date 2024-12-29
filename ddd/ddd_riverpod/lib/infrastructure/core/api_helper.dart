import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/app_state/app_state.dart';
import '../../application/app_state/app_state_notifier.dart';
import '../../application/core/internet_connectivity/internet_connectivity_provider.dart';
import '../../config.dart';
import '../../utils/app_info.dart';
import '../../utils/log_utils.dart';
import 'base_request_response.dart';

parseJson(String text) {
  return compute(jsonDecode, text);
}

class ApiHelper {
  ApiHelper({
    required this.ref,
    required this.dio,
    required this.appStateNotifier,
    required this.appState,
  }) {
    _logUtils.log("init");
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioException e, handler) async {
          switch (e.response?.statusCode) {
            case 401:
              // Implement token refresh logic here
              break;
            default:
              return handler.next(e);
          }
        },
      ),
    );
  }

  final AppState appState;
  final AppStateNotifier appStateNotifier;
  Dio dio;
  final Ref ref;

  static final _logUtils = LogUtils(
    featureName: 'ApiHelper',
    printLog: true,
  );

  Future<dynamic> request(
    HttpMethod method,
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool addDefaultParams = false,
    bool excludeAuth = false,
    bool isLive = false,
    bool isExternal = false,
    bool isFormData = false,
  }) async {
    try {
      if (!ref.read(internetConnectivityNotifierProvider).isConnected) {
        return const BaseResponse(
            isSuccess: false, code: 404, error: 'No Network');
      }
      if (!isExternal) {
        final baseUrl = isLive ? Config.liveServerUrl : Config.serverUrl;
        dio.options.baseUrl = baseUrl;
      }

      var params = isExternal
          ? <String, dynamic>{}
          : addDefaultParams
              ? <String, dynamic>{}
              : <String, dynamic>{};
      params.addAll(data ?? {});

      var heads = isExternal || excludeAuth
          ? <String, dynamic>{}
          : <String, dynamic>{
              'Authorization': 'Bearer ${appState.accessToken}',
            };
      heads.addAll(headers ?? {});

      final options = Options(
        method: method.name.toUpperCase(),
        headers: heads,
      );
      final res = await dio.request(
        path,
        data: isFormData ? FormData.fromMap(params) : data,
        queryParameters: queryParameters,
        options: options,
      );

      return _handleResponse(
        res,
        isExternal,
      );
    } on DioException catch (e) {
      _logUtils.log("DioException encountered: ${e.message}");
      return _handleResponse(
        e.response!,
        isExternal,
      );
    } catch (e) {
      _logUtils.log("Exception encountered: $e");
      return BaseResponse(
          isSuccess: false,
          code: 999,
          error: Config.isDebugMode ? e.toString() : 'Unknown Error');
    }
  }

  Future<dynamic> _handleResponse(
    Response res,
    bool isExternal,
  ) async {
    // Success responses are in 200-299 range
    if (res.statusCode! >= 200 && res.statusCode! < 300) {
      if (isExternal) {
        _logUtils.log("External response: ${res.data}");
        return res;
      } else {
        final response = BaseResponse.fromJson(res.data);
        if (!response.isSuccess && response.code == 403 && appState.loggedIn) {
          return BaseResponse(
            isSuccess: false,
            code: res.statusCode!,
            error: 'Not authenticated',
          );
        } else if (!response.isSuccess &&
            response.code == 113 &&
            appState.loggedIn) {
          return BaseResponse(
            isSuccess: false,
            code: res.statusCode!,
            error: 'User Not Found',
          );
        } else {
          return response;
        }
      }
    }
    if (res.statusCode! >= 300 && res.statusCode! < 400) {
      final response = BaseResponse.fromJson(res.data);
      return response;
    }

    // Handle other status codes
    switch (res.statusCode) {
      case 400:
        return BaseResponse(
          isSuccess: false,
          code: res.data['errorCode'],
          error: res.data['message'],
          statusCode: res.statusCode!,
        );
      case 401:
        return BaseResponse(
          isSuccess: false,
          code: res.statusCode!,
          error: 'Not authenticated',
        );
      case 403:
        return BaseResponse(
          isSuccess: false,
          code: res.statusCode!,
          error: 'Not authenticated',
        );
      case 500:
        return BaseResponse(
          isSuccess: false,
          code: res.statusCode!,
          error: 'Server error',
        );
      default:
        return BaseResponse(
          isSuccess: false,
          code: 0,
          error: res.statusMessage,
        );
    }
  }

  Future<Map<String, dynamic>> _getCommonParameters() async {
    final appInfo = await AppInfo.init();

    return BaseRequest(
      appVersion: appInfo.appVersion,
      deviceRef: appInfo.deviceUUID,
      deviceModel: appInfo.deviceModel,
      platformName: appInfo.platform,
      platformVersion: appInfo.deviceVersion,
      provider: appInfo.provider,
      deviceToken: appState.accessToken,
      appLanguage: 2,
    ).toJson();
  }
}

enum HttpMethod {
  get,
  post,
  put,
  patch,
}
