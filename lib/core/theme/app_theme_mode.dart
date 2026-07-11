enum AppThemeMode {
  system,
  light,
  dark,
}

extension AppThemeModeX on AppThemeMode {
  String get storageValue {
    return switch (this) {
      AppThemeMode.system => 'system',
      AppThemeMode.light => 'light',
      AppThemeMode.dark => 'dark',
    };
  }

  String get arabicName {
    return switch (this) {
      AppThemeMode.system => 'حسب إعداد الجهاز',
      AppThemeMode.light => 'الوضع النهاري',
      AppThemeMode.dark => 'الوضع الليلي',
    };
  }

  static AppThemeMode fromStorage(String? value) {
    return switch (value) {
      'light' => AppThemeMode.light,
      'dark' => AppThemeMode.dark,
      _ => AppThemeMode.system,
    };
  }
}