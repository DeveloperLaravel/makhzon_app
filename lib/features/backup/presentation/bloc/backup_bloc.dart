import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';

import '../../domain/usecase/create_backup_usecase.dart';

import '../../domain/usecase/restore_backup_usecase.dart';
import '../../domain/usecase/share_backup_usecase.dart';
import 'backup_event.dart';
import 'backup_state.dart';

@injectable
class BackupBloc extends Bloc<BackupEvent, BackupState> {
  final CreateBackupUsecase createBackup;
  final RestoreBackupUsecase restoreBackup;
  final ShareBackupUsecase shareBackup;

  BackupBloc({
    required this.createBackup,
    required this.restoreBackup,
    required this.shareBackup,
  }) : super(const BackupState.initial()) {
    on<BackupCreated>(_onBackupCreated);
    on<BackupShared>(_onBackupShared);
    on<BackupRestored>(_onBackupRestored);
  }

  Future<void> _onBackupCreated(
    BackupCreated event,
    Emitter<BackupState> emit,
  ) async {
    emit(const BackupState.loading());

    final result = await createBackup(const NoParams());

    result.fold(
      (failure) {
        emit(
          BackupState.failure(
            message: failure.message,
          ),
        );
      },
      (backup) {
        emit(
          BackupState.created(
            backup: backup,
          ),
        );
      },
    );
  }

  Future<void> _onBackupShared(
    BackupShared event,
    Emitter<BackupState> emit,
  ) async {
    emit(const BackupState.loading());

    final result = await shareBackup(event.filePath);

    result.fold(
      (failure) {
        emit(
          BackupState.failure(
            message: failure.message,
          ),
        );
      },
      (_) {
        emit(
          const BackupState.success(
            message: 'تم فتح خيارات مشاركة النسخة الاحتياطية',
          ),
        );
      },
    );
  }

  Future<void> _onBackupRestored(
    BackupRestored event,
    Emitter<BackupState> emit,
  ) async {
    emit(const BackupState.loading());

    final result = await restoreBackup(event.filePath);

    result.fold(
      (failure) {
        emit(
          BackupState.failure(
            message: failure.message,
          ),
        );
      },
      (_) {
        emit(
          const BackupState.success(
            message: 'تمت استعادة النسخة الاحتياطية بنجاح',
          ),
        );
      },
    );
  }
}