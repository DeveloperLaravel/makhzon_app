import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/backup/backup_exception.dart';
import '../../../../core/backup/backup_file_service.dart';
import '../../../../core/error/failure.dart';

import '../../domain/entities/backup_info_entity.dart';
import '../../domain/repositories/backup_repository.dart';

import '../datasources/backup_local_datasource.dart';
import '../models/backup_model.dart';

@LazySingleton(as: BackupRepository)
class BackupRepositoryImpl
    implements BackupRepository {
  final BackupLocalDatasource datasource;
  final BackupFileService fileService;

  BackupRepositoryImpl({
    required this.datasource,
    required this.fileService,
  });

  @override
  Future<Either<Failure, BackupInfoEntity>>
      createBackup() async {
    try {
      final backup = await datasource.createBackup();

      final jsonContent =
          const JsonEncoder.withIndent('  ').convert(
        backup.toJson(),
      );

      final file =
          await fileService.createBackupFile(
        jsonContent: jsonContent,
      );

      return Right(
        BackupInfoEntity(
          filePath: file.path,
          fileName: file.uri.pathSegments.last,
          createdAt: backup.createdAt.toLocal(),
          warehousesCount:
              backup.warehouses.length,
          itemsCount: backup.items.length,
          stocksCount: backup.stocks.length,
          issuesCount: backup.issues.length,
          transfersCount:
              backup.transfers.length,
        ),
      );
    } catch (error) {
      return Left(
        _mapFailure(error),
      );
    }
  }

  @override
  Future<Either<Failure, String?>>
      pickBackupFile() async {
    try {
      final path =
          await fileService.pickBackupFile();

      return Right(path);
    } catch (error) {
      return Left(
        _mapFailure(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> restoreBackup({
    required String filePath,
  }) async {
    try {
      final jsonContent =
          await fileService.readBackupFile(
        path: filePath,
      );

      final decoded = jsonDecode(jsonContent);

      if (decoded is! Map<String, dynamic>) {
        return const Left(
          Failure(
            'بنية ملف النسخة الاحتياطية غير صحيحة',
          ),
        );
      }

      final backup =
          BackupModel.fromJson(decoded);

      await datasource.restoreBackup(backup);

      return const Right(unit);
    } on FormatException {
      return const Left(
        Failure(
          'ملف النسخة الاحتياطية لا يحتوي على JSON صالح',
        ),
      );
    } catch (error) {
      return Left(
        _mapFailure(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> shareBackup({
    required String filePath,
  }) async {
    try {
      await fileService.shareBackupFile(
        path: filePath,
      );

      return const Right(unit);
    } catch (error) {
      return Left(
        _mapFailure(error),
      );
    }
  }

  Failure _mapFailure(Object error) {
    if (error is BackupException) {
      return Failure(error.message);
    }

    return Failure(
      'حدث خطأ غير متوقع: $error',
    );
  }
}