import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/theme/app_theme_mode.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/theme_repository.dart';

@injectable
class GetThemeModeUsecase
    implements Usecase<AppThemeMode, NoParams> {
  final ThemeRepository repository;

  GetThemeModeUsecase(this.repository);

  @override
  Future<Either<Failure, AppThemeMode>> call(NoParams params) {
    return repository.getThemeMode();
  }
}