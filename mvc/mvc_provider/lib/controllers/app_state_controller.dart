import 'package:flutter/foundation.dart';
import '../models/app_state_model.dart';

class AppStateController with ChangeNotifier {
  AppStateModel _state = AppStateModel();

  AppStateModel get state => _state;
  bool get isLoggedIn => _state.isLoggedIn;
  String? get accessToken => _state.accessToken;
  bool get isLoading => _state.isLoading;

  void setLoading(bool loading) {
    _state = _state.copyWith(isLoading: loading);
    notifyListeners();
  }

  void setLoggedIn({
    required bool isLoggedIn,
    String? accessToken,
  }) {
    _state = _state.copyWith(
      isLoggedIn: isLoggedIn,
      accessToken: accessToken,
    );
    notifyListeners();
  }
}
