import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/core/failure.dart';

part 'failure_state.freezed.dart';

@freezed
class FailureState with _$FailureState {
  const factory FailureState({
    required KtList<Failure> failureList,
    required Option<Failure> latestFailure,
    required bool failureNotified,
  }) = _FailureState;

  factory FailureState.initial() => FailureState(
      failureList: emptyList(), latestFailure: none(), failureNotified: false);
}
