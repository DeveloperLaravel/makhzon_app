import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeMode.system)
    ThemeMode themeMode,

    @Default(1.0)
    double fontScale,

    @Default(0xFF1565C0)
    int primaryColorValue,

    @Default(0xFF0D47A1)
    int titleColorValue,

    @Default(0xFF212121)
    int bodyTextColorValue,

    @Default(false)
    bool useCustomTextColors,

    @Default(false)
    bool isLoaded,
  }) = _ThemeState;

  const ThemeState._();

  Color get primaryColor {
    return Color(primaryColorValue);
  }

  Color get titleColor {
    return Color(titleColorValue);
  }

  Color get bodyTextColor {
    return Color(bodyTextColorValue);
  }

  bool get isDarkMode {
    return themeMode == ThemeMode.dark;
  }
}