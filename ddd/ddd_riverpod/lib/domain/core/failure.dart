import 'package:freezed_annotation/freezed_annotation.dart';

import 'authentication_failure.dart';
import 'core_failure.dart';
import 'network_failure.dart';
import 'storage_failure.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.core(CoreFailure failure) = _CoreFailure;

  const factory Failure.network(NetworkFailure failure) = _NetworkFailure;

  const factory Failure.storage(StorageFailure failure) = _StorageFailure;

  const factory Failure.authentication(AuthenticationFailure failure) =
      _AuthenticationFailure;
}
