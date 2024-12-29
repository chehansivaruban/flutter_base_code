// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeout,
    required TResult Function() noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeout,
    TResult? Function()? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeout,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkTimeoutFailure value) timeout,
    required TResult Function(_NetworkNoInternetFailure value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkTimeoutFailure value)? timeout,
    TResult? Function(_NetworkNoInternetFailure value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkTimeoutFailure value)? timeout,
    TResult Function(_NetworkNoInternetFailure value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkTimeoutFailureImplCopyWith<$Res> {
  factory _$$NetworkTimeoutFailureImplCopyWith(
          _$NetworkTimeoutFailureImpl value,
          $Res Function(_$NetworkTimeoutFailureImpl) then) =
      __$$NetworkTimeoutFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkTimeoutFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkTimeoutFailureImpl>
    implements _$$NetworkTimeoutFailureImplCopyWith<$Res> {
  __$$NetworkTimeoutFailureImplCopyWithImpl(_$NetworkTimeoutFailureImpl _value,
      $Res Function(_$NetworkTimeoutFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkTimeoutFailureImpl implements _NetworkTimeoutFailure {
  const _$NetworkTimeoutFailureImpl();

  @override
  String toString() {
    return 'NetworkFailure.timeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkTimeoutFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeout,
    required TResult Function() noInternet,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeout,
    TResult? Function()? noInternet,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeout,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkTimeoutFailure value) timeout,
    required TResult Function(_NetworkNoInternetFailure value) noInternet,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkTimeoutFailure value)? timeout,
    TResult? Function(_NetworkNoInternetFailure value)? noInternet,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkTimeoutFailure value)? timeout,
    TResult Function(_NetworkNoInternetFailure value)? noInternet,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkTimeoutFailure implements NetworkFailure {
  const factory _NetworkTimeoutFailure() = _$NetworkTimeoutFailureImpl;
}

/// @nodoc
abstract class _$$NetworkNoInternetFailureImplCopyWith<$Res> {
  factory _$$NetworkNoInternetFailureImplCopyWith(
          _$NetworkNoInternetFailureImpl value,
          $Res Function(_$NetworkNoInternetFailureImpl) then) =
      __$$NetworkNoInternetFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkNoInternetFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkNoInternetFailureImpl>
    implements _$$NetworkNoInternetFailureImplCopyWith<$Res> {
  __$$NetworkNoInternetFailureImplCopyWithImpl(
      _$NetworkNoInternetFailureImpl _value,
      $Res Function(_$NetworkNoInternetFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkNoInternetFailureImpl implements _NetworkNoInternetFailure {
  const _$NetworkNoInternetFailureImpl();

  @override
  String toString() {
    return 'NetworkFailure.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkNoInternetFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timeout,
    required TResult Function() noInternet,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timeout,
    TResult? Function()? noInternet,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timeout,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkTimeoutFailure value) timeout,
    required TResult Function(_NetworkNoInternetFailure value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkTimeoutFailure value)? timeout,
    TResult? Function(_NetworkNoInternetFailure value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkTimeoutFailure value)? timeout,
    TResult Function(_NetworkNoInternetFailure value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NetworkNoInternetFailure implements NetworkFailure {
  const factory _NetworkNoInternetFailure() = _$NetworkNoInternetFailureImpl;
}
