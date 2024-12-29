import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.timeout() = _NetworkTimeoutFailure;
  const factory NetworkFailure.noInternet() = _NetworkNoInternetFailure;
}
