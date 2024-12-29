import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String accessToken,
  }) = _LoginResponse;

  factory LoginResponse.empty() => const LoginResponse(
        accessToken: '',
      );
}
