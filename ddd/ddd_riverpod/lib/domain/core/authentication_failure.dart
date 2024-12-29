import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure() = _AuthenticationFailure;

  const factory AuthenticationFailure.tokenExpired() = _TokenExpired;
}
