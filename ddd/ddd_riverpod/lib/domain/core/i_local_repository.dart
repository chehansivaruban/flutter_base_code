import 'package:dartz/dartz.dart';

import 'failure.dart';

abstract class ILocalRepository {
  Future<Either<Failure, String>> read(String key);

  Future<Either<Failure, Map<String, String>>> readAll();

  Future<Either<Failure, Unit>> create(String key, String value);

  Future<Either<Failure, Unit>> update(String key, String value);

  Future<Either<Failure, Unit>> createOrUpdate(String key, String value);

  Future<Either<Failure, Unit>> delete(String key);

  Future<Either<Failure, Unit>> deleteLogin();

  Future<Either<Failure, Unit>> deleteAll();
}
