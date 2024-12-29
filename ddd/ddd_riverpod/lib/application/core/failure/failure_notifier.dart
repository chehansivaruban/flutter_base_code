import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/core/authentication_failure.dart';
import '../../../domain/core/failure.dart';
import '../../../domain/core/network_failure.dart';
import '../../../utils/log_utils.dart';
import 'failure_state.dart';

class FailureStateNotifier extends StateNotifier<FailureState> {
  FailureStateNotifier() : super(FailureState.initial()) {
    {
      _logUtils.log("init");
    }
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "FailureStateNotifier",
    printLog: true,
  );

  @override
  void dispose() {
    _logUtils.log("dispose");
    super.dispose();
  }

  void handleFailure(Failure failure) {
    _logUtils.log("handleFailure : failure : $failure");

    failure.maybeWhen(
      orElse: () {
        _notifyFailure(failure);
      },
      core: (core) {
        core.maybeWhen(
          orElse: () {
            _notifyFailure(failure);
          },
          serverError: (message) async {
            if (message == 'Dio Error') {
              const networkFailure = Failure.network(NetworkFailure.timeout());

              if (!state.failureNotified) {
                _notifyFailure(networkFailure);
              }
            } else if (message == 'No Network') {
              const noInternetFailure =
                  Failure.network(NetworkFailure.noInternet());
              // Do nothing , Showing no network app bar
              _notifyFailure(noInternetFailure);
            } else if (message == 'Not authenticated' || message == '403') {
              const authFailure =
                  Failure.authentication(AuthenticationFailure());
              _notifyFailure(authFailure);
            } else {
              _notifyFailure(failure);
            }
          },
          ignoreWarning: () {
            // Do nothing
          },
        );
      },
    );
  }

  void dismissFailure(Failure failure) {
    _logUtils.log("dismissFailure : failure : $failure");

    state = state.copyWith(
      failureList: state.failureList.minusElement(failure),
      latestFailure: none(),
      failureNotified: false,
    );
  }

  void _notifyFailure(Failure failure) {
    state = state.copyWith(
      latestFailure: none(),
    );

    final failureList = state.failureList;

    if (!failureList.contains(failure)) {
      _logUtils.log("handleFailure : latestFailure : $failure ");

      state = state.copyWith(
        latestFailure: optionOf(failure),
        failureList: state.failureList.plusElement(failure),
        failureNotified: true,
      );
    }
  }
}
