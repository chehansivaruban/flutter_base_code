// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl _$$BaseResponseImplFromJson(Map<String, dynamic> json) =>
    _$BaseResponseImpl(
      isSuccess: json['isSuccess'] as bool? ?? false,
      data: json['data'] as Map<String, dynamic>?,
      info: json['message'] as String?,
      error: json['error'] as String?,
      code: (json['errorCode'] as num?)?.toInt(),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BaseResponseImplToJson(_$BaseResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'message': instance.info,
      'error': instance.error,
      'errorCode': instance.code,
      'statusCode': instance.statusCode,
    };

_$BaseRequestImpl _$$BaseRequestImplFromJson(Map<String, dynamic> json) =>
    _$BaseRequestImpl(
      appVersion: json['appVersion'] as String?,
      deviceRef: json['deviceRef'] as String?,
      deviceToken: json['deviceToken'] as String?,
      deviceModel: json['deviceModel'] as String?,
      language: json['language'] as String?,
      lob: json['lob'] as String?,
      nic: json['nic'] as String?,
      requestType: json['requestType'] as String?,
      platformName: json['platformName'] as String?,
      platformVersion: json['platformVersion'] as String?,
      provider: json['provider'] as String?,
      appLanguage: (json['appLanguage'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BaseRequestImplToJson(_$BaseRequestImpl instance) =>
    <String, dynamic>{
      'appVersion': instance.appVersion,
      'deviceRef': instance.deviceRef,
      'deviceToken': instance.deviceToken,
      'deviceModel': instance.deviceModel,
      'language': instance.language,
      'lob': instance.lob,
      'nic': instance.nic,
      'requestType': instance.requestType,
      'platformName': instance.platformName,
      'platformVersion': instance.platformVersion,
      'provider': instance.provider,
      'appLanguage': instance.appLanguage,
      'userId': instance.userId,
    };

_$OsrmResponseImpl _$$OsrmResponseImplFromJson(Map<String, dynamic> json) =>
    _$OsrmResponseImpl(
      code: json['code'] as String,
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => Route.fromJson(e as Map<String, dynamic>))
          .toList(),
      waypoints: (json['waypoints'] as List<dynamic>?)
          ?.map((e) => Waypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OsrmResponseImplToJson(_$OsrmResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'routes': instance.routes,
      'waypoints': instance.waypoints,
    };

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
      geometry: json['geometry'] as String,
      legs: (json['legs'] as List<dynamic>)
          .map((e) => Leg.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightName: json['weight_name'] as String,
      weight: (json['weight'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
    );

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
      'legs': instance.legs,
      'weight_name': instance.weightName,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
    };

_$LegImpl _$$LegImplFromJson(Map<String, dynamic> json) => _$LegImpl(
      steps: json['steps'] as List<dynamic>,
      summary: json['summary'] as String,
      weight: (json['weight'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
    );

Map<String, dynamic> _$$LegImplToJson(_$LegImpl instance) => <String, dynamic>{
      'steps': instance.steps,
      'summary': instance.summary,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
    };

_$WaypointImpl _$$WaypointImplFromJson(Map<String, dynamic> json) =>
    _$WaypointImpl(
      hint: json['hint'] as String,
      distance: (json['distance'] as num).toDouble(),
      name: json['name'] as String,
      location: (json['location'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$WaypointImplToJson(_$WaypointImpl instance) =>
    <String, dynamic>{
      'hint': instance.hint,
      'distance': instance.distance,
      'name': instance.name,
      'location': instance.location,
    };
