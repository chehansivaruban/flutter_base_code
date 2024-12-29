// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoreValueFailure<T> {
  Object? get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidMobile,
    required TResult Function(String failedValue) invalidOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(String failedValue)? invalidAmount,
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? invalidMobile,
    TResult? Function(String failedValue)? invalidOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidMobile,
    TResult Function(String failedValue)? invalidOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidMobile<T> value) invalidMobile,
    required TResult Function(_InvalidOTP<T> value) invalidOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(_InvalidAmount<T> value)? invalidAmount,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_InvalidMobile<T> value)? invalidMobile,
    TResult? Function(_InvalidOTP<T> value)? invalidOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidMobile<T> value)? invalidMobile,
    TResult Function(_InvalidOTP<T> value)? invalidOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreValueFailureCopyWith<T, $Res> {
  factory $CoreValueFailureCopyWith(
          CoreValueFailure<T> value, $Res Function(CoreValueFailure<T>) then) =
      _$CoreValueFailureCopyWithImpl<T, $Res, CoreValueFailure<T>>;
}

/// @nodoc
class _$CoreValueFailureCopyWithImpl<T, $Res, $Val extends CoreValueFailure<T>>
    implements $CoreValueFailureCopyWith<T, $Res> {
  _$CoreValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidMobile,
    required TResult Function(String failedValue) invalidOTP,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(String failedValue)? invalidAmount,
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? invalidMobile,
    TResult? Function(String failedValue)? invalidOTP,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidMobile,
    TResult Function(String failedValue)? invalidOTP,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidMobile<T> value) invalidMobile,
    required TResult Function(_InvalidOTP<T> value) invalidOTP,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(_InvalidAmount<T> value)? invalidAmount,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_InvalidMobile<T> value)? invalidMobile,
    TResult? Function(_InvalidOTP<T> value)? invalidOTP,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidMobile<T> value)? invalidMobile,
    TResult Function(_InvalidOTP<T> value)? invalidOTP,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements CoreValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidAmountImplCopyWith<T, $Res> {
  factory _$$InvalidAmountImplCopyWith(_$InvalidAmountImpl<T> value,
          $Res Function(_$InvalidAmountImpl<T>) then) =
      __$$InvalidAmountImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidAmountImplCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res, _$InvalidAmountImpl<T>>
    implements _$$InvalidAmountImplCopyWith<T, $Res> {
  __$$InvalidAmountImplCopyWithImpl(_$InvalidAmountImpl<T> _value,
      $Res Function(_$InvalidAmountImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidAmountImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidAmountImpl<T> implements _InvalidAmount<T> {
  const _$InvalidAmountImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.invalidAmount(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidAmountImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidAmountImplCopyWith<T, _$InvalidAmountImpl<T>> get copyWith =>
      __$$InvalidAmountImplCopyWithImpl<T, _$InvalidAmountImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidMobile,
    required TResult Function(String failedValue) invalidOTP,
  }) {
    return invalidAmount(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(String failedValue)? invalidAmount,
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? invalidMobile,
    TResult? Function(String failedValue)? invalidOTP,
  }) {
    return invalidAmount?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidMobile,
    TResult Function(String failedValue)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidMobile<T> value) invalidMobile,
    required TResult Function(_InvalidOTP<T> value) invalidOTP,
  }) {
    return invalidAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(_InvalidAmount<T> value)? invalidAmount,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_InvalidMobile<T> value)? invalidMobile,
    TResult? Function(_InvalidOTP<T> value)? invalidOTP,
  }) {
    return invalidAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidMobile<T> value)? invalidMobile,
    TResult Function(_InvalidOTP<T> value)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(this);
    }
    return orElse();
  }
}

abstract class _InvalidAmount<T> implements CoreValueFailure<T> {
  const factory _InvalidAmount({required final String failedValue}) =
      _$InvalidAmountImpl<T>;

  @override
  String get failedValue;

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidAmountImplCopyWith<T, _$InvalidAmountImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements _InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidMobile,
    required TResult Function(String failedValue) invalidOTP,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(String failedValue)? invalidAmount,
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? invalidMobile,
    TResult? Function(String failedValue)? invalidOTP,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidMobile,
    TResult Function(String failedValue)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidMobile<T> value) invalidMobile,
    required TResult Function(_InvalidOTP<T> value) invalidOTP,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(_InvalidAmount<T> value)? invalidAmount,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_InvalidMobile<T> value)? invalidMobile,
    TResult? Function(_InvalidOTP<T> value)? invalidOTP,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidMobile<T> value)? invalidMobile,
    TResult Function(_InvalidOTP<T> value)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements CoreValueFailure<T> {
  const factory _InvalidEmail({required final String failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  String get failedValue;

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidMobileImplCopyWith<T, $Res> {
  factory _$$InvalidMobileImplCopyWith(_$InvalidMobileImpl<T> value,
          $Res Function(_$InvalidMobileImpl<T>) then) =
      __$$InvalidMobileImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidMobileImplCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res, _$InvalidMobileImpl<T>>
    implements _$$InvalidMobileImplCopyWith<T, $Res> {
  __$$InvalidMobileImplCopyWithImpl(_$InvalidMobileImpl<T> _value,
      $Res Function(_$InvalidMobileImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidMobileImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidMobileImpl<T> implements _InvalidMobile<T> {
  const _$InvalidMobileImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.invalidMobile(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidMobileImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidMobileImplCopyWith<T, _$InvalidMobileImpl<T>> get copyWith =>
      __$$InvalidMobileImplCopyWithImpl<T, _$InvalidMobileImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidMobile,
    required TResult Function(String failedValue) invalidOTP,
  }) {
    return invalidMobile(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(String failedValue)? invalidAmount,
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? invalidMobile,
    TResult? Function(String failedValue)? invalidOTP,
  }) {
    return invalidMobile?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidMobile,
    TResult Function(String failedValue)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidMobile != null) {
      return invalidMobile(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidMobile<T> value) invalidMobile,
    required TResult Function(_InvalidOTP<T> value) invalidOTP,
  }) {
    return invalidMobile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(_InvalidAmount<T> value)? invalidAmount,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_InvalidMobile<T> value)? invalidMobile,
    TResult? Function(_InvalidOTP<T> value)? invalidOTP,
  }) {
    return invalidMobile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidMobile<T> value)? invalidMobile,
    TResult Function(_InvalidOTP<T> value)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidMobile != null) {
      return invalidMobile(this);
    }
    return orElse();
  }
}

abstract class _InvalidMobile<T> implements CoreValueFailure<T> {
  const factory _InvalidMobile({required final String failedValue}) =
      _$InvalidMobileImpl<T>;

  @override
  String get failedValue;

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidMobileImplCopyWith<T, _$InvalidMobileImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidOTPImplCopyWith<T, $Res> {
  factory _$$InvalidOTPImplCopyWith(
          _$InvalidOTPImpl<T> value, $Res Function(_$InvalidOTPImpl<T>) then) =
      __$$InvalidOTPImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidOTPImplCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res, _$InvalidOTPImpl<T>>
    implements _$$InvalidOTPImplCopyWith<T, $Res> {
  __$$InvalidOTPImplCopyWithImpl(
      _$InvalidOTPImpl<T> _value, $Res Function(_$InvalidOTPImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidOTPImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidOTPImpl<T> implements _InvalidOTP<T> {
  const _$InvalidOTPImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.invalidOTP(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidOTPImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidOTPImplCopyWith<T, _$InvalidOTPImpl<T>> get copyWith =>
      __$$InvalidOTPImplCopyWithImpl<T, _$InvalidOTPImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidMobile,
    required TResult Function(String failedValue) invalidOTP,
  }) {
    return invalidOTP(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(String failedValue)? invalidAmount,
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? invalidMobile,
    TResult? Function(String failedValue)? invalidOTP,
  }) {
    return invalidOTP?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidMobile,
    TResult Function(String failedValue)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidOTP != null) {
      return invalidOTP(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_InvalidAmount<T> value) invalidAmount,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidMobile<T> value) invalidMobile,
    required TResult Function(_InvalidOTP<T> value) invalidOTP,
  }) {
    return invalidOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(_InvalidAmount<T> value)? invalidAmount,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_InvalidMobile<T> value)? invalidMobile,
    TResult? Function(_InvalidOTP<T> value)? invalidOTP,
  }) {
    return invalidOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_InvalidAmount<T> value)? invalidAmount,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidMobile<T> value)? invalidMobile,
    TResult Function(_InvalidOTP<T> value)? invalidOTP,
    required TResult orElse(),
  }) {
    if (invalidOTP != null) {
      return invalidOTP(this);
    }
    return orElse();
  }
}

abstract class _InvalidOTP<T> implements CoreValueFailure<T> {
  const factory _InvalidOTP({required final String failedValue}) =
      _$InvalidOTPImpl<T>;

  @override
  String get failedValue;

  /// Create a copy of CoreValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidOTPImplCopyWith<T, _$InvalidOTPImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
