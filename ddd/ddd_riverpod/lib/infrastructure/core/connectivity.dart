import 'package:connectivity_plus/connectivity_plus.dart';

enum InternetConnectivityResult { wifi, mobile, none }

class InternetConnectivity {
  InternetConnectivity(this._connectivity);

  final Connectivity _connectivity;

  Future<InternetConnectivityResult> checkConnectivity() async {
    final connectivity = await _connectivity.checkConnectivity();
    return mapEnum(connectivity[0]);
  }

  InternetConnectivityResult mapEnum(ConnectivityResult input) {
    switch (input) {
      case ConnectivityResult.mobile:
        return InternetConnectivityResult.mobile;
      case ConnectivityResult.wifi:
        return InternetConnectivityResult.wifi;
      case ConnectivityResult.none:
        return InternetConnectivityResult.none;
      default:
        return InternetConnectivityResult.none;
    }
  }

  Stream<InternetConnectivityResult> get onConnectivityChanged =>
      _onConnectivityChanged();

  Stream<InternetConnectivityResult> _onConnectivityChanged() {
    return _connectivity.onConnectivityChanged
        .asyncMap((event) => mapEnum(event[0]));
  }
}
