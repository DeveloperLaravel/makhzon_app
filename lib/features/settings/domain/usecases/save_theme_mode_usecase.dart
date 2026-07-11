import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/theme/app_theme_mode.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/theme_repository.dart';

@injectable
class SaveThemeModeUsecase
    implements Usecase<Unit, AppThemeMode> {
  final ThemeRepository repository;

  SaveThemeModeUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(
    AppThemeMode params,
  ) {
    return repository.saveThemeMode(params);
  }
}