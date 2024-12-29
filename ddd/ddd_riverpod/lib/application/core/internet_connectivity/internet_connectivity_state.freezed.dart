// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_connectivity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetConnectivityState {
  bool get isConnected => throw _privateConstructorUsedError;
  InternetConnectivityResult get type => throw _privateConstructorUsedError;

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetConnectivityStateCopyWith<InternetConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectivityStateCopyWith<$Res> {
  factory $InternetConnectivityStateCopyWith(InternetConnectivityState value,
          $Res Function(InternetConnectivityState) then) =
      _$InternetConnectivityStateCopyWithImpl<$Res, InternetConnectivityState>;
  @useResult
  $Res call({bool isConnected, InternetConnectivityResult type});
}

/// @nodoc
class _$InternetConnectivityStateCopyWithImpl<$Res,
        $Val extends InternetConnectivityState>
    implements $InternetConnectivityStateCopyWith<$Res> {
  _$InternetConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InternetConnectivityResult,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternetConnectivityStateImplCopyWith<$Res>
    implements $InternetConnectivityStateCopyWith<$Res> {
  factory _$$InternetConnectivityStateImplCopyWith(
          _$InternetConnectivityStateImpl value,
          $Res Function(_$InternetConnectivityStateImpl) then) =
      __$$InternetConnectivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnected, InternetConnectivityResult type});
}

/// @nodoc
class __$$InternetConnectivityStateImplCopyWithImpl<$Res>
    extends _$InternetConnectivityStateCopyWithImpl<$Res,
        _$InternetConnectivityStateImpl>
    implements _$$InternetConnectivityStateImplCopyWith<$Res> {
  __$$InternetConnectivityStateImplCopyWithImpl(
      _$InternetConnectivityStateImpl _value,
      $Res Function(_$InternetConnectivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? type = null,
  }) {
    return _then(_$InternetConnectivityStateImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InternetConnectivityResult,
    ));
  }
}

/// @nodoc

class _$InternetConnectivityStateImpl implements _InternetConnectivityState {
  const _$InternetConnectivityStateImpl(
      {required this.isConnected, required this.type});

  @override
  final bool isConnected;
  @override
  final InternetConnectivityResult type;

  @override
  String toString() {
    return 'InternetConnectivityState(isConnected: $isConnected, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetConnectivityStateImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected, type);

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetConnectivityStateImplCopyWith<_$InternetConnectivityStateImpl>
      get copyWith => __$$InternetConnectivityStateImplCopyWithImpl<
          _$InternetConnectivityStateImpl>(this, _$identity);
}

abstract class _InternetConnectivityState implements InternetConnectivityState {
  const factory _InternetConnectivityState(
          {required final bool isConnected,
          required final InternetConnectivityResult type}) =
      _$InternetConnectivityStateImpl;

  @override
  bool get isConnected;
  @override
  InternetConnectivityResult get type;

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternetConnectivityStateImplCopyWith<_$InternetConnectivityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
