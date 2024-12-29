import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/app_state/app_state_provider.dart';
// import '../../config.dart';
import '../../config.dart';
import '../../domain/core/i_local_repository.dart';
import 'api_helper.dart';
import 'connectivity.dart';
import 'local_repository.dart';
import 'refresh_token_inteceptor.dart';

final localStorageProvider = Provider<FlutterSecureStorage>((ref) {
  AndroidOptions getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  return FlutterSecureStorage(aOptions: getAndroidOptions());
});

final localRepositoryProvider = Provider<ILocalRepository>(
  (ref) => LocalRepository(
    ref.watch(localStorageProvider),
  ),
);

final dioProvider = Provider<Dio>((ref) {
  final localRepository = ref.watch(localRepositoryProvider);
  final refreshTokenInterceptor = RefreshTokenInterceptor(localRepository);
  final dioClient = Dio(
    BaseOptions(
      baseUrl: Config.serverUrl,
      connectTimeout: Config.apiTimeout,
      receiveTimeout: Config.apiTimeout,
    ),
  );

  var interceptor = LogInterceptor(
    responseBody: true,
    responseHeader: true,
    request: true,
    requestHeader: true,
    requestBody: true,
  );

  if (Config.isDebugMode &&
      Config.printNetLog &&
      !dioClient.interceptors.contains(interceptor)) {
    dioClient.interceptors.add(interceptor);
    dioClient.interceptors.add(refreshTokenInterceptor);
  }
  if (!(Config.isDebugMode && Config.printNetLog) &&
      dioClient.interceptors.contains(interceptor)) {
    dioClient.interceptors.remove(interceptor);
  }

  return dioClient;
});

final apiHelperProvider = Provider<ApiHelper>((ref) {
  final dio = ref.watch(dioProvider);
  final appStateNotifier = ref.watch(appStateNotifierProvider.notifier);
  final appState = ref.watch(appStateNotifierProvider);
  // final localRepository = ref.watch(localRepositoryProvider);

  return ApiHelper(
    ref: ref,
    dio: dio,
    appStateNotifier: appStateNotifier,
    appState: appState,
  );
});

final internetConnectivityProvider = Provider<InternetConnectivity>((ref) {
  final internetConnectivity = InternetConnectivity(Connectivity());

  return internetConnectivity;
});
