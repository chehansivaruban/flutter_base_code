class BaseResponse<T> {
  final bool isSuccess;
  final int code;
  final String? error;
  final T? data;

  BaseResponse({
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
