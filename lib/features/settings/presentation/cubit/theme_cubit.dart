import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/theme/app_theme_mode.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/get_theme_mode_usecase.dart';
import '../../domain/usecases/save_theme_mode_usecase.dart';
import 'theme_state.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  final GetThemeModeUsecase getThemeMode;
  final SaveThemeModeUsecase saveThemeMode;

  ThemeCubit({
    required this.getThemeMode,
    required this.saveThemeMode,
  }) : super(const ThemeState());

  Future<void> loadTheme() async {
    emit(
      state.copyWith(
        loading: true,
        errorMessage: null,
      ),
    );

    final result = await getThemeMode(const NoParams());

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            loading: false,
            errorMessage: failure.message,
          ),
        );
      },
      (themeMode) {
        emit(
          state.copyWith(
            loading: false,
            themeMode: themeMode,
            errorMessage: null,
          ),
        );
      },
    );
  }

  Future<void> changeTheme(AppThemeMode themeMode) async {
    final previousMode = state.themeMode;

    emit(
      state.copyWith(
        themeMode: themeMode,
        errorMessage: null,
      ),
    );

    final result = await saveThemeMode(themeMode);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            themeMode: previousMode,
            errorMessage: failure.message,
          ),
        );
      },
      (_) {},
    );
  }

  Future<void> toggleLightDark() async {
    final nextMode = state.themeMode == AppThemeMode.dark
        ? AppThemeMode.light
        : AppThemeMode.dark;

    await changeTheme(nextMode);
  }

  ThemeMode get materialThemeMode {
    return switch (state.themeMode) {
      AppThemeMode.system => ThemeMode.system,
      AppThemeMode.light => ThemeMode.light,
      AppThemeMode.dark => ThemeMode.dark,
    };
  }
}