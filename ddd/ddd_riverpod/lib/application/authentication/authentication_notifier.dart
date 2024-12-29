import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/authentication/i_authentication_repository.dart';
import '../../domain/authentication/login/login_request.dart';
import '../../domain/authentication/login/login_response.dart';
import '../../domain/core/failure.dart';
import '../../utils/log_utils.dart';
import '../app_state/app_state_notifier.dart';
import 'authentication_state.dart';

class AuthenticationStateNotifier extends StateNotifier<AuthenticationState> {
  AuthenticationStateNotifier(
    this._authenticationRepository,
    this._appStateNotifier,
  ) : super(AuthenticationState.initial()) {
    {
      _logUtils.log("init");
    }
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "AuthenticationStateNotifier",
    printLog: true,
  );

  final IAuthenticationRepository _authenticationRepository;
  final AppStateNotifier _appStateNotifier;

  @override
  void dispose() {
    _logUtils.log("dispose");
    super.dispose();
  }

  void emailChanged(String email) {
    _logUtils.log("emailChanged : email : $email");

    state = state.copyWith(
      email: email,
    );
  }

  void passwordChanged(String password) {
    _logUtils.log("passwordChanged : password : $password");

    state = state.copyWith(
      password: password,
    );
  }

  Future<void> login() async {
    state = state.copyWith(
      isLoading: true,
      responseData: none(),
      responseFailure: none(),
    );

    Either<Failure, LoginResponse> authenticationResponse =
        await _authenticationRepository.login(
      LoginRequest(
        email: state.email,
        password: state.password,
        loginMode: "APP",
      ),
    );

    authenticationResponse.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          responseFailure: optionOf(failure),
        );
      },
      (response) {
        _appStateNotifier.login(response);
        state = state.copyWith(
          isLoading: false,
          responseData: optionOf(response),
        );
      },
    );
  }
}
