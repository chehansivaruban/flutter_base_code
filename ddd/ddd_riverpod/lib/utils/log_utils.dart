import 'dart:developer' as dev;

class LogUtils {
  LogUtils({
    required this.featureName,
    required this.printLog,
  });

  final String featureName;
  final bool printLog;

  void log(Object log) {
    if (printLog) {
      dev.log("LOG :: $featureName :: $log");
    }
  }
}
