import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/theme/app_theme_mode.dart';

abstract class ThemeRepository {
  Future<Either<Failure, AppThemeMode>> getThemeMode();

  Future<Either<Failure, Unit>> saveThemeMode(
    AppThemeMode themeMode,
  );
}