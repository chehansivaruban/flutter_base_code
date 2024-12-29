import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infrastructure/core/connectivity.dart';
import '../../../utils/log_utils.dart';
import 'internet_connectivity_state.dart';

class InternetConnectivityNotifier
    extends StateNotifier<InternetConnectivityState> {
  InternetConnectivityNotifier(this._connectivity)
      : super(InternetConnectivityState.initial()) {
    _logUtils.log("init");
    _connectivity.onConnectivityChanged.listen(onConnectivityChanged);
    initialConnectivity();
  }

  final InternetConnectivity _connectivity;

  static final LogUtils _logUtils = LogUtils(
    featureName: "InternetConnectivityNotifier",
    printLog: false,
  );

  void initialConnectivity() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    _mapConnectivityResultTostate(connectivityResult);
  }

  Future<void> onConnectivityChanged(event) async {
    await _mapConnectivityResultTostate(event);
  }

  Future<void> _mapConnectivityResultTostate(result) async {
    switch (result) {
      case InternetConnectivityResult.mobile:
        state = state.copyWith(isConnected: true, type: result);
        break;
      case InternetConnectivityResult.wifi:
        state = state.copyWith(isConnected: true, type: result);
        break;
      case InternetConnectivityResult.none:
        state = state.copyWith(isConnected: false, type: result);
        break;
      default:
        state = state.copyWith(isConnected: false, type: result);
    }
  }
}
