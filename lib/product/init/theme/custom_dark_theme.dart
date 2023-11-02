import 'package:architecture_template/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// Custom dark theme for the project
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
      useMaterial3: true,
      colorScheme: CustomColorScheme.darkColorScheme,
      floatingActionButtonTheme: floatingActionButtonThemeData);

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
