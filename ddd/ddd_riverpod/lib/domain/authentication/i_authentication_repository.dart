import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'login/login_request.dart';
import 'login/login_response.dart';

abstract class IAuthenticationRepository {
  Future<Either<Failure, LoginResponse>> login(LoginRequest request);
}
