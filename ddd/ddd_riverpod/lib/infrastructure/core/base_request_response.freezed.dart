// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return _BaseResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get info => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'errorCode')
  int? get code => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  /// Serializes this BaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseCopyWith<BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<$Res> {
  factory $BaseResponseCopyWith(
          BaseResponse value, $Res Function(BaseResponse) then) =
      _$BaseResponseCopyWithImpl<$Res, BaseResponse>;
  @useResult
  $Res call(
      {bool isSuccess,
      Map<String, dynamic>? data,
      @JsonKey(name: 'message') String? info,
      String? error,
      @JsonKey(name: 'errorCode') int? code,
      int? statusCode});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<$Res, $Val extends BaseResponse>
    implements $BaseResponseCopyWith<$Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? data = freezed,
    Object? info = freezed,
    Object? error = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseImplCopyWith<$Res>
    implements $BaseResponseCopyWith<$Res> {
  factory _$$BaseResponseImplCopyWith(
          _$BaseResponseImpl value, $Res Function(_$BaseResponseImpl) then) =
      __$$BaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      Map<String, dynamic>? data,
      @JsonKey(name: 'message') String? info,
      String? error,
      @JsonKey(name: 'errorCode') int? code,
      int? statusCode});
}

/// @nodoc
class __$$BaseResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseCopyWithImpl<$Res, _$BaseResponseImpl>
    implements _$$BaseResponseImplCopyWith<$Res> {
  __$$BaseResponseImplCopyWithImpl(
      _$BaseResponseImpl _value, $Res Function(_$BaseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? data = freezed,
    Object? info = freezed,
    Object? error = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$BaseResponseImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseImpl implements _BaseResponse {
  const _$BaseResponseImpl(
      {this.isSuccess = false,
      final Map<String, dynamic>? data,
      @JsonKey(name: 'message') this.info,
      this.error,
      @JsonKey(name: 'errorCode') this.code,
      this.statusCode})
      : _data = data;

  factory _$BaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool isSuccess;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'message')
  final String? info;
  @override
  final String? error;
  @override
  @JsonKey(name: 'errorCode')
  final int? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'BaseResponse(isSuccess: $isSuccess, data: $data, info: $info, error: $error, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSuccess,
      const DeepCollectionEquality().hash(_data),
      info,
      error,
      code,
      statusCode);

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      __$$BaseResponseImplCopyWithImpl<_$BaseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponse implements BaseResponse {
  const factory _BaseResponse(
      {final bool isSuccess,
      final Map<String, dynamic>? data,
      @JsonKey(name: 'message') final String? info,
      final String? error,
      @JsonKey(name: 'errorCode') final int? code,
      final int? statusCode}) = _$BaseResponseImpl;

  factory _BaseResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(name: 'message')
  String? get info;
  @override
  String? get error;
  @override
  @JsonKey(name: 'errorCode')
  int? get code;
  @override
  int? get statusCode;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseRequest _$BaseRequestFromJson(Map<String, dynamic> json) {
  return _BaseRequest.fromJson(json);
}

/// @nodoc
mixin _$BaseRequest {
  String? get appVersion => throw _privateConstructorUsedError;
  String? get deviceRef => throw _privateConstructorUsedError;
  String? get deviceToken => throw _privateConstructorUsedError;
  String? get deviceModel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get lob => throw _privateConstructorUsedError;
  String? get nic => throw _privateConstructorUsedError;
  String? get requestType => throw _privateConstructorUsedError;
  String? get platformName => throw _privateConstructorUsedError;
  String? get platformVersion => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  int? get appLanguage => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  /// Serializes this BaseRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseRequestCopyWith<BaseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseRequestCopyWith<$Res> {
  factory $BaseRequestCopyWith(
          BaseRequest value, $Res Function(BaseRequest) then) =
      _$BaseRequestCopyWithImpl<$Res, BaseRequest>;
  @useResult
  $Res call(
      {String? appVersion,
      String? deviceRef,
      String? deviceToken,
      String? deviceModel,
      String? language,
      String? lob,
      String? nic,
      String? requestType,
      String? platformName,
      String? platformVersion,
      String? provider,
      int? appLanguage,
      int? userId});
}

/// @nodoc
class _$BaseRequestCopyWithImpl<$Res, $Val extends BaseRequest>
    implements $BaseRequestCopyWith<$Res> {
  _$BaseRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = freezed,
    Object? deviceRef = freezed,
    Object? deviceToken = freezed,
    Object? deviceModel = freezed,
    Object? language = freezed,
    Object? lob = freezed,
    Object? nic = freezed,
    Object? requestType = freezed,
    Object? platformName = freezed,
    Object? platformVersion = freezed,
    Object? provider = freezed,
    Object? appLanguage = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceRef: freezed == deviceRef
          ? _value.deviceRef
          : deviceRef // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      lob: freezed == lob
          ? _value.lob
          : lob // ignore: cast_nullable_to_non_nullable
              as String?,
      nic: freezed == nic
          ? _value.nic
          : nic // ignore: cast_nullable_to_non_nullable
              as String?,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      platformName: freezed == platformName
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformVersion: freezed == platformVersion
          ? _value.platformVersion
          : platformVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      appLanguage: freezed == appLanguage
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseRequestImplCopyWith<$Res>
    implements $BaseRequestCopyWith<$Res> {
  factory _$$BaseRequestImplCopyWith(
          _$BaseRequestImpl value, $Res Function(_$BaseRequestImpl) then) =
      __$$BaseRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? appVersion,
      String? deviceRef,
      String? deviceToken,
      String? deviceModel,
      String? language,
      String? lob,
      String? nic,
      String? requestType,
      String? platformName,
      String? platformVersion,
      String? provider,
      int? appLanguage,
      int? userId});
}

/// @nodoc
class __$$BaseRequestImplCopyWithImpl<$Res>
    extends _$BaseRequestCopyWithImpl<$Res, _$BaseRequestImpl>
    implements _$$BaseRequestImplCopyWith<$Res> {
  __$$BaseRequestImplCopyWithImpl(
      _$BaseRequestImpl _value, $Res Function(_$BaseRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = freezed,
    Object? deviceRef = freezed,
    Object? deviceToken = freezed,
    Object? deviceModel = freezed,
    Object? language = freezed,
    Object? lob = freezed,
    Object? nic = freezed,
    Object? requestType = freezed,
    Object? platformName = freezed,
    Object? platformVersion = freezed,
    Object? provider = freezed,
    Object? appLanguage = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$BaseRequestImpl(
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceRef: freezed == deviceRef
          ? _value.deviceRef
          : deviceRef // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      lob: freezed == lob
          ? _value.lob
          : lob // ignore: cast_nullable_to_non_nullable
              as String?,
      nic: freezed == nic
          ? _value.nic
          : nic // ignore: cast_nullable_to_non_nullable
              as String?,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      platformName: freezed == platformName
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformVersion: freezed == platformVersion
          ? _value.platformVersion
          : platformVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      appLanguage: freezed == appLanguage
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseRequestImpl implements _BaseRequest {
  const _$BaseRequestImpl(
      {this.appVersion,
      this.deviceRef,
      this.deviceToken,
      this.deviceModel,
      this.language,
      this.lob,
      this.nic,
      this.requestType,
      this.platformName,
      this.platformVersion,
      this.provider,
      this.appLanguage,
      this.userId});

  factory _$BaseRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseRequestImplFromJson(json);

  @override
  final String? appVersion;
  @override
  final String? deviceRef;
  @override
  final String? deviceToken;
  @override
  final String? deviceModel;
  @override
  final String? language;
  @override
  final String? lob;
  @override
  final String? nic;
  @override
  final String? requestType;
  @override
  final String? platformName;
  @override
  final String? platformVersion;
  @override
  final String? provider;
  @override
  final int? appLanguage;
  @override
  final int? userId;

  @override
  String toString() {
    return 'BaseRequest(appVersion: $appVersion, deviceRef: $deviceRef, deviceToken: $deviceToken, deviceModel: $deviceModel, language: $language, lob: $lob, nic: $nic, requestType: $requestType, platformName: $platformName, platformVersion: $platformVersion, provider: $provider, appLanguage: $appLanguage, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseRequestImpl &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceRef, deviceRef) ||
                other.deviceRef == deviceRef) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.lob, lob) || other.lob == lob) &&
            (identical(other.nic, nic) || other.nic == nic) &&
            (identical(other.requestType, requestType) ||
                other.requestType == requestType) &&
            (identical(other.platformName, platformName) ||
                other.platformName == platformName) &&
            (identical(other.platformVersion, platformVersion) ||
                other.platformVersion == platformVersion) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.appLanguage, appLanguage) ||
                other.appLanguage == appLanguage) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appVersion,
      deviceRef,
      deviceToken,
      deviceModel,
      language,
      lob,
      nic,
      requestType,
      platformName,
      platformVersion,
      provider,
      appLanguage,
      userId);

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseRequestImplCopyWith<_$BaseRequestImpl> get copyWith =>
      __$$BaseRequestImplCopyWithImpl<_$BaseRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseRequestImplToJson(
      this,
    );
  }
}

abstract class _BaseRequest implements BaseRequest {
  const factory _BaseRequest(
      {final String? appVersion,
      final String? deviceRef,
      final String? deviceToken,
      final String? deviceModel,
      final String? language,
      final String? lob,
      final String? nic,
      final String? requestType,
      final String? platformName,
      final String? platformVersion,
      final String? provider,
      final int? appLanguage,
      final int? userId}) = _$BaseRequestImpl;

  factory _BaseRequest.fromJson(Map<String, dynamic> json) =
      _$BaseRequestImpl.fromJson;

  @override
  String? get appVersion;
  @override
  String? get deviceRef;
  @override
  String? get deviceToken;
  @override
  String? get deviceModel;
  @override
  String? get language;
  @override
  String? get lob;
  @override
  String? get nic;
  @override
  String? get requestType;
  @override
  String? get platformName;
  @override
  String? get platformVersion;
  @override
  String? get provider;
  @override
  int? get appLanguage;
  @override
  int? get userId;

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseRequestImplCopyWith<_$BaseRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OsrmResponse _$OsrmResponseFromJson(Map<String, dynamic> json) {
  return _OsrmResponse.fromJson(json);
}

/// @nodoc
mixin _$OsrmResponse {
  String get code => throw _privateConstructorUsedError;
  List<Route>? get routes => throw _privateConstructorUsedError;
  List<Waypoint>? get waypoints => throw _privateConstructorUsedError;

  /// Serializes this OsrmResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OsrmResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OsrmResponseCopyWith<OsrmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsrmResponseCopyWith<$Res> {
  factory $OsrmResponseCopyWith(
          OsrmResponse value, $Res Function(OsrmResponse) then) =
      _$OsrmResponseCopyWithImpl<$Res, OsrmResponse>;
  @useResult
  $Res call({String code, List<Route>? routes, List<Waypoint>? waypoints});
}

/// @nodoc
class _$OsrmResponseCopyWithImpl<$Res, $Val extends OsrmResponse>
    implements $OsrmResponseCopyWith<$Res> {
  _$OsrmResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OsrmResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? routes = freezed,
    Object? waypoints = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
      waypoints: freezed == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Waypoint>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OsrmResponseImplCopyWith<$Res>
    implements $OsrmResponseCopyWith<$Res> {
  factory _$$OsrmResponseImplCopyWith(
          _$OsrmResponseImpl value, $Res Function(_$OsrmResponseImpl) then) =
      __$$OsrmResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, List<Route>? routes, List<Waypoint>? waypoints});
}

/// @nodoc
class __$$OsrmResponseImplCopyWithImpl<$Res>
    extends _$OsrmResponseCopyWithImpl<$Res, _$OsrmResponseImpl>
    implements _$$OsrmResponseImplCopyWith<$Res> {
  __$$OsrmResponseImplCopyWithImpl(
      _$OsrmResponseImpl _value, $Res Function(_$OsrmResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OsrmResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? routes = freezed,
    Object? waypoints = freezed,
  }) {
    return _then(_$OsrmResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      routes: freezed == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
      waypoints: freezed == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Waypoint>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OsrmResponseImpl implements _OsrmResponse {
  const _$OsrmResponseImpl(
      {required this.code,
      required final List<Route>? routes,
      required final List<Waypoint>? waypoints})
      : _routes = routes,
        _waypoints = waypoints;

  factory _$OsrmResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OsrmResponseImplFromJson(json);

  @override
  final String code;
  final List<Route>? _routes;
  @override
  List<Route>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Waypoint>? _waypoints;
  @override
  List<Waypoint>? get waypoints {
    final value = _waypoints;
    if (value == null) return null;
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OsrmResponse(code: $code, routes: $routes, waypoints: $waypoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OsrmResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(_waypoints));

  /// Create a copy of OsrmResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OsrmResponseImplCopyWith<_$OsrmResponseImpl> get copyWith =>
      __$$OsrmResponseImplCopyWithImpl<_$OsrmResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OsrmResponseImplToJson(
      this,
    );
  }
}

abstract class _OsrmResponse implements OsrmResponse {
  const factory _OsrmResponse(
      {required final String code,
      required final List<Route>? routes,
      required final List<Waypoint>? waypoints}) = _$OsrmResponseImpl;

  factory _OsrmResponse.fromJson(Map<String, dynamic> json) =
      _$OsrmResponseImpl.fromJson;

  @override
  String get code;
  @override
  List<Route>? get routes;
  @override
  List<Waypoint>? get waypoints;

  /// Create a copy of OsrmResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OsrmResponseImplCopyWith<_$OsrmResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  String get geometry => throw _privateConstructorUsedError;
  List<Leg> get legs => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_name')
  String get weightName => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call(
      {String geometry,
      List<Leg> legs,
      @JsonKey(name: 'weight_name') String weightName,
      double weight,
      double duration,
      double distance});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = null,
    Object? legs = null,
    Object? weightName = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as String,
      legs: null == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>,
      weightName: null == weightName
          ? _value.weightName
          : weightName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
          _$RouteImpl value, $Res Function(_$RouteImpl) then) =
      __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String geometry,
      List<Leg> legs,
      @JsonKey(name: 'weight_name') String weightName,
      double weight,
      double duration,
      double distance});
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
      _$RouteImpl _value, $Res Function(_$RouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = null,
    Object? legs = null,
    Object? weightName = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_$RouteImpl(
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as String,
      legs: null == legs
          ? _value._legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>,
      weightName: null == weightName
          ? _value.weightName
          : weightName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl implements _Route {
  const _$RouteImpl(
      {required this.geometry,
      required final List<Leg> legs,
      @JsonKey(name: 'weight_name') required this.weightName,
      required this.weight,
      required this.duration,
      required this.distance})
      : _legs = legs;

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  final String geometry;
  final List<Leg> _legs;
  @override
  List<Leg> get legs {
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_legs);
  }

  @override
  @JsonKey(name: 'weight_name')
  final String weightName;
  @override
  final double weight;
  @override
  final double duration;
  @override
  final double distance;

  @override
  String toString() {
    return 'Route(geometry: $geometry, legs: $legs, weightName: $weightName, weight: $weight, duration: $duration, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteImpl &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            const DeepCollectionEquality().equals(other._legs, _legs) &&
            (identical(other.weightName, weightName) ||
                other.weightName == weightName) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      geometry,
      const DeepCollectionEquality().hash(_legs),
      weightName,
      weight,
      duration,
      distance);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(
      this,
    );
  }
}

abstract class _Route implements Route {
  const factory _Route(
      {required final String geometry,
      required final List<Leg> legs,
      @JsonKey(name: 'weight_name') required final String weightName,
      required final double weight,
      required final double duration,
      required final double distance}) = _$RouteImpl;

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  String get geometry;
  @override
  List<Leg> get legs;
  @override
  @JsonKey(name: 'weight_name')
  String get weightName;
  @override
  double get weight;
  @override
  double get duration;
  @override
  double get distance;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Leg _$LegFromJson(Map<String, dynamic> json) {
  return _Leg.fromJson(json);
}

/// @nodoc
mixin _$Leg {
  List<dynamic> get steps => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

  /// Serializes this Leg to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LegCopyWith<Leg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegCopyWith<$Res> {
  factory $LegCopyWith(Leg value, $Res Function(Leg) then) =
      _$LegCopyWithImpl<$Res, Leg>;
  @useResult
  $Res call(
      {List<dynamic> steps,
      String summary,
      double weight,
      double duration,
      double distance});
}

/// @nodoc
class _$LegCopyWithImpl<$Res, $Val extends Leg> implements $LegCopyWith<$Res> {
  _$LegCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? summary = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegImplCopyWith<$Res> implements $LegCopyWith<$Res> {
  factory _$$LegImplCopyWith(_$LegImpl value, $Res Function(_$LegImpl) then) =
      __$$LegImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> steps,
      String summary,
      double weight,
      double duration,
      double distance});
}

/// @nodoc
class __$$LegImplCopyWithImpl<$Res> extends _$LegCopyWithImpl<$Res, _$LegImpl>
    implements _$$LegImplCopyWith<$Res> {
  __$$LegImplCopyWithImpl(_$LegImpl _value, $Res Function(_$LegImpl) _then)
      : super(_value, _then);

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? summary = null,
    Object? weight = null,
    Object? duration = null,
    Object? distance = null,
  }) {
    return _then(_$LegImpl(
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegImpl implements _Leg {
  const _$LegImpl(
      {required final List<dynamic> steps,
      required this.summary,
      required this.weight,
      required this.duration,
      required this.distance})
      : _steps = steps;

  factory _$LegImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegImplFromJson(json);

  final List<dynamic> _steps;
  @override
  List<dynamic> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final String summary;
  @override
  final double weight;
  @override
  final double duration;
  @override
  final double distance;

  @override
  String toString() {
    return 'Leg(steps: $steps, summary: $summary, weight: $weight, duration: $duration, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegImpl &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_steps),
      summary,
      weight,
      duration,
      distance);

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LegImplCopyWith<_$LegImpl> get copyWith =>
      __$$LegImplCopyWithImpl<_$LegImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegImplToJson(
      this,
    );
  }
}

abstract class _Leg implements Leg {
  const factory _Leg(
      {required final List<dynamic> steps,
      required final String summary,
      required final double weight,
      required final double duration,
      required final double distance}) = _$LegImpl;

  factory _Leg.fromJson(Map<String, dynamic> json) = _$LegImpl.fromJson;

  @override
  List<dynamic> get steps;
  @override
  String get summary;
  @override
  double get weight;
  @override
  double get duration;
  @override
  double get distance;

  /// Create a copy of Leg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LegImplCopyWith<_$LegImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Waypoint _$WaypointFromJson(Map<String, dynamic> json) {
  return _Waypoint.fromJson(json);
}

/// @nodoc
mixin _$Waypoint {
  String get hint => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<double> get location => throw _privateConstructorUsedError;

  /// Serializes this Waypoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaypointCopyWith<Waypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaypointCopyWith<$Res> {
  factory $WaypointCopyWith(Waypoint value, $Res Function(Waypoint) then) =
      _$WaypointCopyWithImpl<$Res, Waypoint>;
  @useResult
  $Res call({String hint, double distance, String name, List<double> location});
}

/// @nodoc
class _$WaypointCopyWithImpl<$Res, $Val extends Waypoint>
    implements $WaypointCopyWith<$Res> {
  _$WaypointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = null,
    Object? distance = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaypointImplCopyWith<$Res>
    implements $WaypointCopyWith<$Res> {
  factory _$$WaypointImplCopyWith(
          _$WaypointImpl value, $Res Function(_$WaypointImpl) then) =
      __$$WaypointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hint, double distance, String name, List<double> location});
}

/// @nodoc
class __$$WaypointImplCopyWithImpl<$Res>
    extends _$WaypointCopyWithImpl<$Res, _$WaypointImpl>
    implements _$$WaypointImplCopyWith<$Res> {
  __$$WaypointImplCopyWithImpl(
      _$WaypointImpl _value, $Res Function(_$WaypointImpl) _then)
      : super(_value, _then);

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = null,
    Object? distance = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$WaypointImpl(
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaypointImpl implements _Waypoint {
  const _$WaypointImpl(
      {required this.hint,
      required this.distance,
      required this.name,
      required final List<double> location})
      : _location = location;

  factory _$WaypointImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaypointImplFromJson(json);

  @override
  final String hint;
  @override
  final double distance;
  @override
  final String name;
  final List<double> _location;
  @override
  List<double> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  String toString() {
    return 'Waypoint(hint: $hint, distance: $distance, name: $name, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaypointImpl &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hint, distance, name,
      const DeepCollectionEquality().hash(_location));

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaypointImplCopyWith<_$WaypointImpl> get copyWith =>
      __$$WaypointImplCopyWithImpl<_$WaypointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaypointImplToJson(
      this,
    );
  }
}

abstract class _Waypoint implements Waypoint {
  const factory _Waypoint(
      {required final String hint,
      required final double distance,
      required final String name,
      required final List<double> location}) = _$WaypointImpl;

  factory _Waypoint.fromJson(Map<String, dynamic> json) =
      _$WaypointImpl.fromJson;

  @override
  String get hint;
  @override
  double get distance;
  @override
  String get name;
  @override
  List<double> get location;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaypointImplCopyWith<_$WaypointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
