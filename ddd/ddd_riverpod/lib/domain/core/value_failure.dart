import 'package:freezed_annotation/freezed_annotation.dart';

import 'core_value_failure.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.core(CoreValueFailure<T> failure) = _Core<T>;
}
