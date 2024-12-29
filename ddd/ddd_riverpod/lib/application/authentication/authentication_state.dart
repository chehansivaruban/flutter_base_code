import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/authentication/login/login_response.dart';
import '../../domain/core/failure.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required bool isLoading,
    required String email,
    required String password,
    required Option<LoginResponse> responseData,
    required Option<Failure> responseFailure,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
        isLoading: false,
        email: "",
        password: "",
        responseData: none(),
        responseFailure: none(),
      );
}
