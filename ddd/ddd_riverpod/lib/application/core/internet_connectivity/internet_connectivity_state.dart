import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/core/connectivity.dart';

part 'internet_connectivity_state.freezed.dart';

@freezed
class InternetConnectivityState with _$InternetConnectivityState {
  const factory InternetConnectivityState({
    required bool isConnected,
    required InternetConnectivityResult type,
  }) = _InternetConnectivityState;

  factory InternetConnectivityState.initial() =>
      const InternetConnectivityState(
        isConnected: true,
        type: InternetConnectivityResult.none,
      );
}
