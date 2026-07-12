import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme_state.dart';

@lazySingleton
class ThemeCubit extends Cubit<ThemeState> {
  static const String _themeModeKey = 'theme_mode';
  static const String _fontScaleKey = 'font_scale';
  static const String _primaryColorKey = 'primary_color';
  static const String _titleColorKey = 'title_color';
  static const String _bodyTextColorKey = 'body_text_color';
  static const String _customTextColorsKey =
      'use_custom_text_colors';

  ThemeCubit()
      : super(
          const ThemeState(),
        );

  Future<void> loadSettings() async {
    final preferences =
        await SharedPreferences.getInstance();

    final themeModeIndex =
        preferences.getInt(_themeModeKey) ??
            ThemeMode.system.index;

    final safeThemeModeIndex = themeModeIndex.clamp(
      0,
      ThemeMode.values.length - 1,
    );

    emit(
      state.copyWith(
        themeMode:
            ThemeMode.values[safeThemeModeIndex],
        fontScale:
            preferences.getDouble(_fontScaleKey) ??
                1.0,
        primaryColorValue:
            preferences.getInt(_primaryColorKey) ??
                0xFF1565C0,
        titleColorValue:
            preferences.getInt(_titleColorKey) ??
                0xFF0D47A1,
        bodyTextColorValue:
            preferences.getInt(
                  _bodyTextColorKey,
                ) ??
                0xFF212121,
        useCustomTextColors:
            preferences.getBool(
                  _customTextColorsKey,
                ) ??
                false,
        isLoaded: true,
      ),
    );
  }

  Future<void> changeThemeMode(
    ThemeMode mode,
  ) async {
    emit(
      state.copyWith(
        themeMode: mode,
      ),
    );

    final preferences =
        await SharedPreferences.getInstance();

    await preferences.setInt(
      _themeModeKey,
      mode.index,
    );
  }

  Future<void> changeFontScale(
    double value,
  ) async {
    final safeValue = value.clamp(
      0.80,
      1.50,
    );

    emit(
      state.copyWith(
        fontScale: safeValue,
      ),
    );

    final preferences =
        await SharedPreferences.getInstance();

    await preferences.setDouble(
      _fontScaleKey,
      safeValue,
    );
  }

  Future<void> changePrimaryColor(
    Color color,
  ) async {
    emit(
      state.copyWith(
        primaryColorValue: color.toARGB32(),
      ),
    );

    final preferences =
        await SharedPreferences.getInstance();

    await preferences.setInt(
      _primaryColorKey,
      color.toARGB32(),
    );
  }

  Future<void> changeTitleColor(
    Color color,
  ) async {
    emit(
      state.copyWith(
        titleColorValue: color.toARGB32(),
        useCustomTextColors: true,
      ),
    );

    final preferences =
        await SharedPreferences.getInstance();

    await preferences.setInt(
      _titleColorKey,
      color.toARGB32(),
    );

    await preferences.setBool(
      _customTextColorsKey,
      true,
    );
  }

  Future<void> changeBodyTextColor(
    Color color,
  ) async {
    emit(
      state.copyWith(
        bodyTextColorValue: color.toARGB32(),
        useCustomTextColors: true,
      ),
    );

    final preferences =
        await SharedPreferences.getInstance();

    await preferences.setInt(
      _bodyTextColorKey,
      color.toARGB32(),
    );

    await preferences.setBool(
      _customTextColorsKey,
      true,
    );
  }

  Future<void> changeUseCustomTextColors(
    bool value,
  ) async {
    emit(
      state.copyWith(
        useCustomTextColors: value,
      ),
    );

    final preferences =
        await SharedPreferences.getInstance();

    await preferences.setBool(
      _customTextColorsKey,
      value,
    );
  }

  Future<void> resetSettings() async {
    const defaultState = ThemeState(
      isLoaded: true,
    );

    emit(defaultState);

    final preferences =
        await SharedPreferences.getInstance();

    await preferences.remove(_themeModeKey);
    await preferences.remove(_fontScaleKey);
    await preferences.remove(_primaryColorKey);
    await preferences.remove(_titleColorKey);
    await preferences.remove(_bodyTextColorKey);
    await preferences.remove(
      _customTextColorsKey,
    );
  }
}