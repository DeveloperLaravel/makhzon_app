import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/theme/app_theme_mode.dart';

part 'theme_state.freezed.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(AppThemeMode.system) AppThemeMode themeMode,
    @Default(false) bool loading,
    String? errorMessage,
  }) = _ThemeState;
}