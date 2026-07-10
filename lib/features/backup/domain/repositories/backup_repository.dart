import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/backup_info_entity.dart';

abstract class BackupRepository {
  Future<Either<Failure, BackupInfoEntity>> createBackup();

  Future<Either<Failure, Unit>> restoreBackup({
    required String filePath,
  });

  Future<Either<Failure, Unit>> shareBackup({
    required String filePath,
  });
}