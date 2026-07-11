import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/theme/app_theme_mode.dart';

abstract class ThemeLocalDatasource {
  Future<AppThemeMode> getThemeMode();

  Future<void> saveThemeMode(AppThemeMode themeMode);
}

@LazySingleton(as: ThemeLocalDatasource)
class ThemeLocalDatasourceImpl implements ThemeLocalDatasource {
  static const String _themeModeKey = 'app_theme_mode';

  final SharedPreferencesAsync preferences;

  ThemeLocalDatasourceImpl(this.preferences);

  @override
  Future<AppThemeMode> getThemeMode() async {
    final savedValue = await preferences.getString(_themeModeKey);

    return AppThemeModeX.fromStorage(savedValue);
  }

  @override
  Future<void> saveThemeMode(AppThemeMode themeMode) async {
    await preferences.setString(
      _themeModeKey,
      themeMode.storageValue,
    );
  }
}