import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

import '../repositories/backup_repository.dart';

@injectable
class PickBackupFileUsecase
    implements Usecase<String?, NoParams> {
  final BackupRepository repository;

  PickBackupFileUsecase(this.repository);

  @override
  Future<Either<Failure, String?>> call(
    NoParams params,
  ) {
    return repository.pickBackupFile();
  }
}