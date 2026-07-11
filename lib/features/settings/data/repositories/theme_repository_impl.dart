import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/theme/app_theme_mode.dart';
import '../../domain/repositories/theme_repository.dart';
import '../datasources/theme_local_datasource.dart';

@LazySingleton(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDatasource datasource;

  ThemeRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, AppThemeMode>> getThemeMode() async {
    try {
      final themeMode = await datasource.getThemeMode();

      return Right(themeMode);
    } catch (e) {
      return Left(
        Failure('فشل تحميل إعدادات المظهر: $e'),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> saveThemeMode(
    AppThemeMode themeMode,
  ) async {
    try {
      await datasource.saveThemeMode(themeMode);

      return const Right(unit);
    } catch (e) {
      return Left(
        Failure('فشل حفظ إعدادات المظهر: $e'),
      );
    }
  }
}