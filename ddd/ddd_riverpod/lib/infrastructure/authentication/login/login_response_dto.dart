import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/authentication/login/login_response.dart';

part 'login_response_dto.freezed.dart';
part 'login_response_dto.g.dart';

@freezed
class LoginResponseDto with _$LoginResponseDto {
  const factory LoginResponseDto({
    required String accessToken,
  }) = _LoginResponseDto;

  const LoginResponseDto._();

  factory LoginResponseDto.fromDomain(LoginResponse domain) {
    return LoginResponseDto(
      accessToken: domain.accessToken,
    );
  }

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);

  LoginResponse toDomain() => LoginResponse(
        accessToken: accessToken,
      );
}
