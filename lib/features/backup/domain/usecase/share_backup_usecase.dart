import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

import '../repositories/backup_repository.dart';

@injectable
class ShareBackupUsecase implements Usecase<Unit, String> {
  final BackupRepository repository;

  ShareBackupUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(String filePath) {
    return repository.shareBackup(
      filePath: filePath,
    );
  }
}