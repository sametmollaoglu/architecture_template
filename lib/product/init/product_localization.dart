import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

@immutable

/// Product localization manager
final class ProductLocalization extends EasyLocalization {
  /// ProductLocalization need to [child] for a wrap locale item
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
            supportedLocales: _supportedItems,
            path: _translationPath,
            useOnlyLangCode: true);

  static final List<Locale> _supportedItems = const [
    Locale('tr', 'TR'),
    Locale('en', 'US'),
  ];

  static const String _translationPath = 'asset/translations';

  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) =>
      context.setLocale(value.locale);
}
