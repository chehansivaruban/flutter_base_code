import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/core/values/constants.dart';
import '../../../utils/log_utils.dart';
import '../../domain/authentication/login/login_response.dart';
import '../../domain/core/i_local_repository.dart';
import '../../presentation/core/app.dart';
import '../../presentation/routes/app_router.gr.dart';
import '../../utils/string_extensions.dart';
import 'app_state.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier(this._localRepository) : super(AppState.initial()) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "AppStateNotifier",
    printLog: true,
  );

  final ILocalRepository _localRepository;

  @override
  void dispose() {
    _logUtils.log("dispose");
    super.dispose();
  }

  Future<void> appStart() async {
    _logUtils.log("appStart : before state : $state");
    state = state.copyWith(
      isLoading: true,
      isAppStarted: none(),
    );
    final isLoggedIn = (await _localRepository.read(StorageKeys.isLoggedIn))
        .getOrElse(() => false.toString())
        .toBool();

    if (!isLoggedIn) {
      state = state.copyWith(
        isLoading: false,
        loggedIn: false,
        isAppStarted: some(true),
      );
      _logUtils.log("appStart : after state !isLoggedIn : $state");

      return;
    } else {
      //fetch the data from local storage and update the state
      final token =
          (await _localRepository.read(StorageKeys.token)).getOrElse(() => '');

      state = state.copyWith(
        isLoading: false,
        loggedIn: isLoggedIn,
        accessToken: token,
        isAppStarted: some(true),
      );

      _logUtils.log("appStart : after state : $state");
    }
  }

  Future<void> login(LoginResponse authResponse) async {
    _logUtils.log("login : authResponse : $authResponse");
    await _localRepository.createOrUpdate(
        StorageKeys.isLoggedIn, true.toString());

    await _localRepository.createOrUpdate(
        StorageKeys.token, authResponse.accessToken);

    // await _localRepository.createOrUpdate(
    //     StorageKeys.refreshToken, authResponse.accessToken);

    state = state.copyWith(
      loggedIn: true,
      accessToken: authResponse.accessToken,
      // refreshToken: authResponse.refreshToken,
      isAppStarted: some(true),
    );
    App.appRouter.replaceAll(
      const [
        NavBarRoute(),
      ],
    );
  }

  Future<void> logout() async {
    await _localRepository.deleteLogin();
  }
}
