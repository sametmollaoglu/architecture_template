import 'package:architecture_template/product/init/config/app_configuration.dart';
import 'package:envied/envied.dart';

part 'prod_env.g.dart';

@Envied(
  obfuscate: true,
  path: 'asset/env/.prod.env',
)
final class ProdEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdEnv._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}