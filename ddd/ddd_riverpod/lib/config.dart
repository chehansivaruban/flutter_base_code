mixin Config {
  static bool get printLog => true;

  static bool get printNetLog => true;

  static bool get isDebugMode => true;

  static bool get disableAppUpdate => false;

  static Duration get apiTimeout => const Duration(milliseconds: 6000);

  static String get serverUrl => "https://api.in2dfuture.com/";

  static String get liveServerUrl => 'https://api.in2dfuture.com/';
}
