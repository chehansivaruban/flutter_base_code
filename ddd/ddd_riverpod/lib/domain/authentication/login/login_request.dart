import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
    required String loginMode,
  }) = _LoginRequest;

  factory LoginRequest.empty() => const LoginRequest(
        email: '',
        password: '',
        loginMode: '',
      );
}
