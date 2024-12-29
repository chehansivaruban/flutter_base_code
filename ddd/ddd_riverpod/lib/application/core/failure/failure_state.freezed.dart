// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FailureState {
  KtList<Failure> get failureList => throw _privateConstructorUsedError;
  Option<Failure> get latestFailure => throw _privateConstructorUsedError;
  bool get failureNotified => throw _privateConstructorUsedError;

  /// Create a copy of FailureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureStateCopyWith<FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureStateCopyWith<$Res> {
  factory $FailureStateCopyWith(
          FailureState value, $Res Function(FailureState) then) =
      _$FailureStateCopyWithImpl<$Res, FailureState>;
  @useResult
  $Res call(
      {KtList<Failure> failureList,
      Option<Failure> latestFailure,
      bool failureNotified});
}

/// @nodoc
class _$FailureStateCopyWithImpl<$Res, $Val extends FailureState>
    implements $FailureStateCopyWith<$Res> {
  _$FailureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FailureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureList = null,
    Object? latestFailure = null,
    Object? failureNotified = null,
  }) {
    return _then(_value.copyWith(
      failureList: null == failureList
          ? _value.failureList
          : failureList // ignore: cast_nullable_to_non_nullable
              as KtList<Failure>,
      latestFailure: null == latestFailure
          ? _value.latestFailure
          : latestFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      failureNotified: null == failureNotified
          ? _value.failureNotified
          : failureNotified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res>
    implements $FailureStateCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KtList<Failure> failureList,
      Option<Failure> latestFailure,
      bool failureNotified});
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$FailureStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FailureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureList = null,
    Object? latestFailure = null,
    Object? failureNotified = null,
  }) {
    return _then(_$FailureStateImpl(
      failureList: null == failureList
          ? _value.failureList
          : failureList // ignore: cast_nullable_to_non_nullable
              as KtList<Failure>,
      latestFailure: null == latestFailure
          ? _value.latestFailure
          : latestFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      failureNotified: null == failureNotified
          ? _value.failureNotified
          : failureNotified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl implements _FailureState {
  const _$FailureStateImpl(
      {required this.failureList,
      required this.latestFailure,
      required this.failureNotified});

  @override
  final KtList<Failure> failureList;
  @override
  final Option<Failure> latestFailure;
  @override
  final bool failureNotified;

  @override
  String toString() {
    return 'FailureState(failureList: $failureList, latestFailure: $latestFailure, failureNotified: $failureNotified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl &&
            (identical(other.failureList, failureList) ||
                other.failureList == failureList) &&
            (identical(other.latestFailure, latestFailure) ||
                other.latestFailure == latestFailure) &&
            (identical(other.failureNotified, failureNotified) ||
                other.failureNotified == failureNotified));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failureList, latestFailure, failureNotified);

  /// Create a copy of FailureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      __$$FailureStateImplCopyWithImpl<_$FailureStateImpl>(this, _$identity);
}

abstract class _FailureState implements FailureState {
  const factory _FailureState(
      {required final KtList<Failure> failureList,
      required final Option<Failure> latestFailure,
      required final bool failureNotified}) = _$FailureStateImpl;

  @override
  KtList<Failure> get failureList;
  @override
  Option<Failure> get latestFailure;
  @override
  bool get failureNotified;

  /// Create a copy of FailureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
