import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

import '../repositories/backup_repository.dart';

@injectable
class RestoreBackupUsecase implements Usecase<Unit, String> {
  final BackupRepository repository;

  RestoreBackupUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(String filePath) {
    return repository.restoreBackup(
      filePath: filePath,
    );
  }
}