class BaseResponse {
  final bool isSuccess;
  final int code;
  final String? error;
  final dynamic data;

  const BaseResponse({
    required this.isSuccess,
    required this.code,
    this.error,
    this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      isSuccess: json['success'] ?? false,
      code: json['code'] ?? 0,
      error: json['error'],
      data: json['data'],
    );
  }
}

class BaseRequest {
  final String appVersion;
  final String deviceRef;
  final String deviceModel;
  final String platformName;
  final String platformVersion;
  final String provider;
  final String? deviceToken;
  final int appLanguage;

  BaseRequest({
    required this.appVersion,
    required this.deviceRef,
    required this.deviceModel,
    required this.platformName,
    required this.platformVersion,
    required this.provider,
    this.deviceToken,
    required this.appLanguage,
  });

  Map<String, dynamic> toJson() {
    return {
      'appVersion': appVersion,
      'deviceRef': deviceRef,
      'deviceModel': deviceModel,
      'platformName': platformName,
      'platformVersion': platformVersion,
      'provider': provider,
      'deviceToken': deviceToken,
      'appLanguage': appLanguage,
    };
  }
}
