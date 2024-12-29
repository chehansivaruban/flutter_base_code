import 'dart:async';

import 'package:dio/dio.dart';
import '../../config.dart';
import '../../domain/core/error_response.dart';
import '../../domain/core/i_local_repository.dart';
import '../../domain/core/values/constants.dart';
import '../../utils/log_utils.dart';
import '../authentication/login/login_response_dto.dart';
import 'base_request_response.dart';

class RefreshTokenInterceptor extends Interceptor {
  static final _logUtils = LogUtils(
    featureName: "refreshTokenInterceptor",
    printLog: true,
  );

  List<Map<dynamic, dynamic>> failedRequests = [];
  bool isRefreshing = false;

  RefreshTokenInterceptor(this._localRepository);

  final ILocalRepository _localRepository;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final token =
          (await _localRepository.read(StorageKeys.token)).getOrElse(() => '');
      _logUtils.log(
          'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}, IS REFRESHING: ${isRefreshing.toString()}');
      if (token.isEmpty) {
        _logUtils.log("LOGGING OUT: NO REFRESH TOKEN FOUND");
        // perform logout
        return handler.reject(err);
      }

      if (!isRefreshing) {
        _logUtils.log("ACCESS TOKEN EXPIRED, GETTING NEW TOKEN PAIR");
        isRefreshing = true;
        final refreshTokenResponse = await refreshToken(err, handler, token);
        _logUtils.log(
            "in error ::refreshTokenResponse : ${refreshTokenResponse.isSuccess.toString()}");
        if (refreshTokenResponse.isSuccess) {
          if (refreshTokenResponse.message == "999") {
            err = DioException(
              error: Errors(
                code: "511",
                message: "Session Expired",
              ),
              requestOptions: err.requestOptions,
              response: err.response,
              type: err.type,
            );

            handler.reject(err);
          }

          err.requestOptions.headers['Authorization'] = 'Bearer $token';
        } else {
          err = DioException(
            error: Errors(
              code: "511",
              message: "Session Expired",
            ),
            requestOptions: err.requestOptions,
            response: err.response,
            type: err.type,
          );
          // If the refresh process fails, reject with the previous error

          return handler.next(err);
        }
      } else {
        _logUtils.log("ADDING ERRRORED REQUEST TO FAILED QUEUE");
        failedRequests.add({'err': err, 'handler': handler});
      }
    } else {
      return handler.next(err);
    }
  }

  FutureOr refreshToken(
      DioException err, ErrorInterceptorHandler handler, String token) async {
    _logUtils.log("in refresh token-----------------------------");
    Dio retryDio = Dio(
      BaseOptions(
        baseUrl: Config.liveServerUrl,
      ),
    );
    // handle refresh token
    var response = await retryDio.post(
      Config.liveServerUrl,
      data: {
        "accessToken": token,
      },
      options: Options(
        headers: {"Content-Type": 'application/json'},
      ),
    );
    _logUtils.log("refresh token response ${response.data}");
    var parsedResponse = response.data;
    if (response.statusCode == 401 || response.statusCode == 403) {
      // handle logout
      _logUtils.log("LOGGING OUT: EXPIRED REFRESH TOKEN");
      return const BaseResponse(
        isSuccess: false,
        code: 401,
        error: 'Not authenticated',
      );
    }
    if (response.statusCode == 200) {
      final response = LoginResponseDto.fromJson(parsedResponse);
      return response.toDomain();
    }
  }

  Future retryRequests(token) async {
    Dio retryDio = Dio(
      BaseOptions(
        baseUrl: Config.liveServerUrl,
      ),
    );
    _logUtils.log("--------------RETRYING  :: token :: $token ");
    for (var i = 0; i < failedRequests.length; i++) {
      _logUtils.log(
          'RETRYING[$i] => PATH: ${failedRequests[i]['err'].requestOptions.path}');
      RequestOptions requestOptions =
          failedRequests[i]['err'].requestOptions as RequestOptions;
      requestOptions.headers = {
        'Authorization': 'Bearer $token',
      };
      await retryDio.fetch(requestOptions).then(
        failedRequests[i]['handler'].resolve,
        onError: (error) async {
          failedRequests[i]['handler'].reject(error as DioException);
          _logUtils.log(
              'onError RETRYING[$i] => PATH: ${failedRequests[i]['err'].requestOptions.path} ${error.response?.statusCode}');
        },
      );
      _logUtils.log(
          'End Fetching RETRYING[$i] => PATH: ${failedRequests[i]['err'].requestOptions.path}');
    }
    isRefreshing = false;
    failedRequests = [];
  }
}
