// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  Object get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CoreFailureImplCopyWith<$Res> {
  factory _$$CoreFailureImplCopyWith(
          _$CoreFailureImpl value, $Res Function(_$CoreFailureImpl) then) =
      __$$CoreFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoreFailure failure});

  $CoreFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CoreFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CoreFailureImpl>
    implements _$$CoreFailureImplCopyWith<$Res> {
  __$$CoreFailureImplCopyWithImpl(
      _$CoreFailureImpl _value, $Res Function(_$CoreFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CoreFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CoreFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoreFailureCopyWith<$Res> get failure {
    return $CoreFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CoreFailureImpl implements _CoreFailure {
  const _$CoreFailureImpl(this.failure);

  @override
  final CoreFailure failure;

  @override
  String toString() {
    return 'Failure.core(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreFailureImplCopyWith<_$CoreFailureImpl> get copyWith =>
      __$$CoreFailureImplCopyWithImpl<_$CoreFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return core(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return core?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (core != null) {
      return core(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return core(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return core?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (core != null) {
      return core(this);
    }
    return orElse();
  }
}

abstract class _CoreFailure implements Failure {
  const factory _CoreFailure(final CoreFailure failure) = _$CoreFailureImpl;

  @override
  CoreFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoreFailureImplCopyWith<_$CoreFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkFailure failure});

  $NetworkFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$NetworkFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkFailureCopyWith<$Res> get failure {
    return $NetworkFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$NetworkFailureImpl implements _NetworkFailure {
  const _$NetworkFailureImpl(this.failure);

  @override
  final NetworkFailure failure;

  @override
  String toString() {
    return 'Failure.network(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return network(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return network?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements Failure {
  const factory _NetworkFailure(final NetworkFailure failure) =
      _$NetworkFailureImpl;

  @override
  NetworkFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageFailureImplCopyWith<$Res> {
  factory _$$StorageFailureImplCopyWith(_$StorageFailureImpl value,
          $Res Function(_$StorageFailureImpl) then) =
      __$$StorageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageFailure failure});

  $StorageFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$StorageFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$StorageFailureImpl>
    implements _$$StorageFailureImplCopyWith<$Res> {
  __$$StorageFailureImplCopyWithImpl(
      _$StorageFailureImpl _value, $Res Function(_$StorageFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$StorageFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as StorageFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageFailureCopyWith<$Res> get failure {
    return $StorageFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$StorageFailureImpl implements _StorageFailure {
  const _$StorageFailureImpl(this.failure);

  @override
  final StorageFailure failure;

  @override
  String toString() {
    return 'Failure.storage(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      __$$StorageFailureImplCopyWithImpl<_$StorageFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return storage(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return storage?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class _StorageFailure implements Failure {
  const factory _StorageFailure(final StorageFailure failure) =
      _$StorageFailureImpl;

  @override
  StorageFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationFailureImplCopyWith<$Res> {
  factory _$$AuthenticationFailureImplCopyWith(
          _$AuthenticationFailureImpl value,
          $Res Function(_$AuthenticationFailureImpl) then) =
      __$$AuthenticationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationFailure failure});

  $AuthenticationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$AuthenticationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthenticationFailureImpl>
    implements _$$AuthenticationFailureImplCopyWith<$Res> {
  __$$AuthenticationFailureImplCopyWithImpl(_$AuthenticationFailureImpl _value,
      $Res Function(_$AuthenticationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthenticationFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthenticationFailure,
    ));
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticationFailureCopyWith<$Res> get failure {
    return $AuthenticationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$AuthenticationFailureImpl implements _AuthenticationFailure {
  const _$AuthenticationFailureImpl(this.failure);

  @override
  final AuthenticationFailure failure;

  @override
  String toString() {
    return 'Failure.authentication(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => __$$AuthenticationFailureImplCopyWithImpl<
          _$AuthenticationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoreFailure failure) core,
    required TResult Function(NetworkFailure failure) network,
    required TResult Function(StorageFailure failure) storage,
    required TResult Function(AuthenticationFailure failure) authentication,
  }) {
    return authentication(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoreFailure failure)? core,
    TResult? Function(NetworkFailure failure)? network,
    TResult? Function(StorageFailure failure)? storage,
    TResult? Function(AuthenticationFailure failure)? authentication,
  }) {
    return authentication?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoreFailure failure)? core,
    TResult Function(NetworkFailure failure)? network,
    TResult Function(StorageFailure failure)? storage,
    TResult Function(AuthenticationFailure failure)? authentication,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoreFailure value) core,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
    required TResult Function(_AuthenticationFailure value) authentication,
  }) {
    return authentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CoreFailure value)? core,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
    TResult? Function(_AuthenticationFailure value)? authentication,
  }) {
    return authentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoreFailure value)? core,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    TResult Function(_AuthenticationFailure value)? authentication,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure implements Failure {
  const factory _AuthenticationFailure(final AuthenticationFailure failure) =
      _$AuthenticationFailureImpl;

  @override
  AuthenticationFailure get failure;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
