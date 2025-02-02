mixin Config {
  static bool get printLog => true;

  static bool get printNetLog => true;

  static bool get isDebugMode => true;

  static bool get disableAppUpdate => false;

  static Duration get apiTimeout => const Duration(milliseconds: 6000);

  static String get serverUrl => "ADD YOUR URL";

  static String get liveServerUrl => 'ADD YOUR URL';
}
