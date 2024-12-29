import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_value_failure.freezed.dart';

@freezed
class CoreValueFailure<T> with _$CoreValueFailure<T> {
  const factory CoreValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
//  <T> is a generic type parameter.
//  It is used to make the CoreValueFailure class more flexible and reusable by
//allowing it to handle different types of values.
  const factory CoreValueFailure.invalidAmount({required String failedValue}) =
      _InvalidAmount;

  const factory CoreValueFailure.invalidEmail({required String failedValue}) =
      _InvalidEmail;

  const factory CoreValueFailure.invalidMobile({required String failedValue}) =
      _InvalidMobile;

  const factory CoreValueFailure.invalidOTP({required String failedValue}) =
      _InvalidOTP;
}
