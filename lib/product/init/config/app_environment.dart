import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

/// Application environment manager class
final class AppEnvironment {
  /// Setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  /// General application environment setup
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;

  /// Base url for api
  static String get baseUrl => _config.baseUrl;

  /// Google maps api key
  static String get apiKey => _config.apiKey;
}

///Get application environment items
enum AppEnvironmentItems {
  /// Base url for api
  baseUrl,

  /// Google maps api key
  apiKey;

  /// Get application environment item value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironmentItem is not initialized.');
    }
  }
}
