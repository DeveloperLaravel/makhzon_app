import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

import '../entities/backup_info_entity.dart';
import '../repositories/backup_repository.dart';

@injectable
class CreateBackupUsecase
    implements Usecase<BackupInfoEntity, NoParams> {
  final BackupRepository repository;

  CreateBackupUsecase(this.repository);

  @override
  Future<Either<Failure, BackupInfoEntity>> call(
    NoParams params,
  ) {
    return repository.createBackup();
  }
}