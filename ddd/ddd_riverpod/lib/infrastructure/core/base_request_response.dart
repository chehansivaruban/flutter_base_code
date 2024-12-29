// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_request_response.freezed.dart';
part 'base_request_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  const factory BaseResponse({
    @Default(false) bool isSuccess,
    Map<String, dynamic>? data,
    @JsonKey(name: 'message') String? info,
    String? error,
    @JsonKey(name: 'errorCode') int? code,
    int? statusCode,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}

@freezed
class BaseRequest with _$BaseRequest {
  const factory BaseRequest({
    String? appVersion,
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
    int? userId,
  }) = _BaseRequest;

  factory BaseRequest.fromJson(Map<String, dynamic> json) =>
      _$BaseRequestFromJson(json);
}

@freezed
class OsrmResponse with _$OsrmResponse {
  const factory OsrmResponse({
    required String code,
    required List<Route>? routes,
    required List<Waypoint>? waypoints,
  }) = _OsrmResponse;

  factory OsrmResponse.fromJson(Map<String, dynamic> json) =>
      _$OsrmResponseFromJson(json);
}

@freezed
class Route with _$Route {
  const factory Route({
    required String geometry,
    required List<Leg> legs,
    @JsonKey(name: 'weight_name') required String weightName,
    required double weight,
    required double duration,
    required double distance,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
class Leg with _$Leg {
  const factory Leg({
    required List<dynamic> steps,
    required String summary,
    required double weight,
    required double duration,
    required double distance,
  }) = _Leg;

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
}

@freezed
class Waypoint with _$Waypoint {
  const factory Waypoint({
    required String hint,
    required double distance,
    required String name,
    required List<double> location,
  }) = _Waypoint;

  factory Waypoint.fromJson(Map<String, dynamic> json) =>
      _$WaypointFromJson(json);
}
