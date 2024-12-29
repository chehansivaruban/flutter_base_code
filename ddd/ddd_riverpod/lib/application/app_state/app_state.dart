import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    // main stated of the app
    required bool loggedIn,
    required String accessToken,
    required String refreshToken,
    required Option<bool> isAppStarted,
    required String userId,
    required bool isLoading,
  }) = _AppState;

  factory AppState.initial() => AppState(
        loggedIn: false,
        accessToken: '',
        refreshToken: '',
        isAppStarted: none(),
        userId: '',
        isLoading: false,
      );
}
