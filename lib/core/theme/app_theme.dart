import 'package:flutter/material.dart';

import '../../features/settings/presentation/cubit/theme_state.dart';

abstract final class AppTheme {
  static ThemeData light(
    ThemeState settings,
  ) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: settings.primaryColor,
      brightness: Brightness.light,
    );

    return _buildTheme(
      colorScheme: colorScheme,
      settings: settings,
      brightness: Brightness.light,
    );
  }

  static ThemeData dark(
    ThemeState settings,
  ) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: settings.primaryColor,
      brightness: Brightness.dark,
    );

    return _buildTheme(
      colorScheme: colorScheme,
      settings: settings,
      brightness: Brightness.dark,
    );
  }

  static ThemeData _buildTheme({
    required ColorScheme colorScheme,
    required ThemeState settings,
    required Brightness brightness,
  }) {
    final defaultTextColor =
        brightness == Brightness.dark
            ? colorScheme.onSurface
            : const Color(0xFF212121);

    final defaultTitleColor =
        brightness == Brightness.dark
            ? colorScheme.onSurface
            : colorScheme.primary;

    final bodyColor =
        settings.useCustomTextColors
            ? settings.bodyTextColor
            : defaultTextColor;

    final titleColor =
        settings.useCustomTextColors
            ? settings.titleColor
            : defaultTitleColor;

    final baseTheme = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor:
          colorScheme.surface,
    );

    final textTheme =
        baseTheme.textTheme.copyWith(
      displayLarge:
          baseTheme.textTheme.displayLarge?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.bold,
      ),
      displayMedium:
          baseTheme.textTheme.displayMedium?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.bold,
      ),
      displaySmall:
          baseTheme.textTheme.displaySmall?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge:
          baseTheme.textTheme.headlineLarge?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium:
          baseTheme.textTheme.headlineMedium?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall:
          baseTheme.textTheme.headlineSmall?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.w700,
      ),
      titleLarge:
          baseTheme.textTheme.titleLarge?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.w700,
      ),
      titleMedium:
          baseTheme.textTheme.titleMedium?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.w600,
      ),
      titleSmall:
          baseTheme.textTheme.titleSmall?.copyWith(
        color: titleColor,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge:
          baseTheme.textTheme.bodyLarge?.copyWith(
        color: bodyColor,
        height: 1.5,
      ),
      bodyMedium:
          baseTheme.textTheme.bodyMedium?.copyWith(
        color: bodyColor,
        height: 1.5,
      ),
      bodySmall:
          baseTheme.textTheme.bodySmall?.copyWith(
        color: bodyColor.withValues(
          alpha: 0.75,
        ),
        height: 1.4,
      ),
      labelLarge:
          baseTheme.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );

    return baseTheme.copyWith(
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        backgroundColor:
            colorScheme.surface,
        foregroundColor: titleColor,
        titleTextStyle:
            textTheme.titleLarge?.copyWith(
          color: titleColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: colorScheme.surfaceContainerLow,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(18),
          side: BorderSide(
            color: colorScheme.outlineVariant,
          ),
        ),
      ),
      inputDecorationTheme:
          InputDecorationTheme(
        filled: true,
        fillColor:
            colorScheme.surfaceContainerLowest,
        contentPadding:
            const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(14),
          borderSide: BorderSide(
            color: colorScheme.outline,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(14),
          borderSide: BorderSide(
            color: colorScheme.outlineVariant,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(14),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 2,
          ),
        ),
      ),
      filledButtonTheme:
          FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize:
              const Size.fromHeight(52),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(14),
          ),
          textStyle:
              const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme:
          OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize:
              const Size.fromHeight(52),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}