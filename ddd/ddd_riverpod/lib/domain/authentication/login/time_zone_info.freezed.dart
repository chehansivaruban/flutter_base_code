// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_zone_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeZoneInfo {
  int get id => throw _privateConstructorUsedError;
  String get timeZoneId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get utcOffset => throw _privateConstructorUsedError;
  bool get isSupportDayLightSaving => throw _privateConstructorUsedError;

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeZoneInfoCopyWith<TimeZoneInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneInfoCopyWith<$Res> {
  factory $TimeZoneInfoCopyWith(
          TimeZoneInfo value, $Res Function(TimeZoneInfo) then) =
      _$TimeZoneInfoCopyWithImpl<$Res, TimeZoneInfo>;
  @useResult
  $Res call(
      {int id,
      String timeZoneId,
      String displayName,
      String utcOffset,
      bool isSupportDayLightSaving});
}

/// @nodoc
class _$TimeZoneInfoCopyWithImpl<$Res, $Val extends TimeZoneInfo>
    implements $TimeZoneInfoCopyWith<$Res> {
  _$TimeZoneInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeZoneId = null,
    Object? displayName = null,
    Object? utcOffset = null,
    Object? isSupportDayLightSaving = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeZoneId: null == timeZoneId
          ? _value.timeZoneId
          : timeZoneId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      utcOffset: null == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as String,
      isSupportDayLightSaving: null == isSupportDayLightSaving
          ? _value.isSupportDayLightSaving
          : isSupportDayLightSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeZoneInfoImplCopyWith<$Res>
    implements $TimeZoneInfoCopyWith<$Res> {
  factory _$$TimeZoneInfoImplCopyWith(
          _$TimeZoneInfoImpl value, $Res Function(_$TimeZoneInfoImpl) then) =
      __$$TimeZoneInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String timeZoneId,
      String displayName,
      String utcOffset,
      bool isSupportDayLightSaving});
}

/// @nodoc
class __$$TimeZoneInfoImplCopyWithImpl<$Res>
    extends _$TimeZoneInfoCopyWithImpl<$Res, _$TimeZoneInfoImpl>
    implements _$$TimeZoneInfoImplCopyWith<$Res> {
  __$$TimeZoneInfoImplCopyWithImpl(
      _$TimeZoneInfoImpl _value, $Res Function(_$TimeZoneInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeZoneId = null,
    Object? displayName = null,
    Object? utcOffset = null,
    Object? isSupportDayLightSaving = null,
  }) {
    return _then(_$TimeZoneInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeZoneId: null == timeZoneId
          ? _value.timeZoneId
          : timeZoneId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      utcOffset: null == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as String,
      isSupportDayLightSaving: null == isSupportDayLightSaving
          ? _value.isSupportDayLightSaving
          : isSupportDayLightSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TimeZoneInfoImpl implements _TimeZoneInfo {
  const _$TimeZoneInfoImpl(
      {required this.id,
      required this.timeZoneId,
      required this.displayName,
      required this.utcOffset,
      required this.isSupportDayLightSaving});

  @override
  final int id;
  @override
  final String timeZoneId;
  @override
  final String displayName;
  @override
  final String utcOffset;
  @override
  final bool isSupportDayLightSaving;

  @override
  String toString() {
    return 'TimeZoneInfo(id: $id, timeZoneId: $timeZoneId, displayName: $displayName, utcOffset: $utcOffset, isSupportDayLightSaving: $isSupportDayLightSaving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeZoneInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeZoneId, timeZoneId) ||
                other.timeZoneId == timeZoneId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset) &&
            (identical(
                    other.isSupportDayLightSaving, isSupportDayLightSaving) ||
                other.isSupportDayLightSaving == isSupportDayLightSaving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, timeZoneId, displayName,
      utcOffset, isSupportDayLightSaving);

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeZoneInfoImplCopyWith<_$TimeZoneInfoImpl> get copyWith =>
      __$$TimeZoneInfoImplCopyWithImpl<_$TimeZoneInfoImpl>(this, _$identity);
}

abstract class _TimeZoneInfo implements TimeZoneInfo {
  const factory _TimeZoneInfo(
      {required final int id,
      required final String timeZoneId,
      required final String displayName,
      required final String utcOffset,
      required final bool isSupportDayLightSaving}) = _$TimeZoneInfoImpl;

  @override
  int get id;
  @override
  String get timeZoneId;
  @override
  String get displayName;
  @override
  String get utcOffset;
  @override
  bool get isSupportDayLightSaving;

  /// Create a copy of TimeZoneInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeZoneInfoImplCopyWith<_$TimeZoneInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
