import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_failure.freezed.dart';

@freezed
class CoreFailure with _$CoreFailure {
  const factory CoreFailure.cannotLaunchURL() = _CannotLaunchURL;

  const factory CoreFailure.ignoreWarning() = _IgnoreWarning;

  const factory CoreFailure.invalidMobileNumber() = _InvalidMobileNumber;

  const factory CoreFailure.permissionDenied() = _PermissionDeniedFailure;

  const factory CoreFailure.serverError(String message) = _ServerErrorFailure;

  const factory CoreFailure.somethingWentWrong(Object e) = _SomethingWentWrong;

  const factory CoreFailure.unexpected() = _UnexpectedFailure;
}
