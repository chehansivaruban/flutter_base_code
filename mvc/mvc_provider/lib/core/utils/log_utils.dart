import 'package:flutter/foundation.dart';

class LogUtils {
  final String featureName;
  final bool printLog;

  LogUtils({
    required this.featureName,
    this.printLog = true,
  });

  void log(String message) {
    if (printLog && kDebugMode) {
      print('[$featureName] $message');
    }
  }
}
