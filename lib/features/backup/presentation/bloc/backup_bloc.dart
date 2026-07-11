import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';


import '../../domain/usecase/create_backup_usecase.dart';
import '../../domain/usecase/pick_backup_file_usecase.dart';
import '../../domain/usecase/restore_backup_usecase.dart';
import '../../domain/usecase/share_backup_usecase.dart';
import 'backup_event.dart';
import 'backup_state.dart';

@injectable
class BackupBloc
    extends Bloc<BackupEvent, BackupState> {
  final CreateBackupUsecase createBackup;
  final PickBackupFileUsecase pickBackupFile;
  final RestoreBackupUsecase restoreBackup;
  final ShareBackupUsecase shareBackup;

  BackupBloc({
    required this.createBackup,
    required this.pickBackupFile,
    required this.restoreBackup,
    required this.shareBackup,
  }) : super(const BackupState()) {
    on<BackupCreateRequested>(
      _onCreateRequested,
    );

    on<BackupShareRequested>(
      _onShareRequested,
    );

    on<BackupPickAndRestoreRequested>(
      _onPickAndRestoreRequested,
    );

    on<BackupRestoreConfirmed>(
      _onRestoreConfirmed,
    );

    on<BackupMessageConsumed>(
      _onMessageConsumed,
    );
  }

  Future<void> _onCreateRequested(
    BackupCreateRequested event,
    Emitter<BackupState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        successMessage: null,
        errorMessage: null,
      ),
    );

    final result = await createBackup(
      const NoParams(),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: failure.message,
          ),
        );
      },
      (backup) {
        emit(
          state.copyWith(
            isLoading: false,
            latestBackup: backup,
            successMessage:
                'تم إنشاء النسخة الاحتياطية بنجاح',
          ),
        );
      },
    );
  }

  Future<void> _onShareRequested(
    BackupShareRequested event,
    Emitter<BackupState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        successMessage: null,
        errorMessage: null,
      ),
    );

    final result = await shareBackup(
      event.filePath,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: failure.message,
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            isLoading: false,
            successMessage:
                'تم فتح نافذة المشاركة',
          ),
        );
      },
    );
  }

  Future<void> _onPickAndRestoreRequested(
    BackupPickAndRestoreRequested event,
    Emitter<BackupState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        selectedRestorePath: null,
        successMessage: null,
        errorMessage: null,
      ),
    );

    final result = await pickBackupFile(
      const NoParams(),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: failure.message,
          ),
        );
      },
      (filePath) {
        if (filePath == null) {
          emit(
            state.copyWith(
              isLoading: false,
            ),
          );

          return;
        }

        emit(
          state.copyWith(
            isLoading: false,
            selectedRestorePath: filePath,
          ),
        );
      },
    );
  }

  Future<void> _onRestoreConfirmed(
    BackupRestoreConfirmed event,
    Emitter<BackupState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        successMessage: null,
        errorMessage: null,
      ),
    );

    final result = await restoreBackup(
      event.filePath,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            selectedRestorePath: null,
            errorMessage: failure.message,
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            isLoading: false,
            selectedRestorePath: null,
            successMessage:
                'تمت استعادة النسخة الاحتياطية بنجاح',
          ),
        );
      },
    );
  }

  void _onMessageConsumed(
    BackupMessageConsumed event,
    Emitter<BackupState> emit,
  ) {
    emit(
      state.copyWith(
        successMessage: null,
        errorMessage: null,
      ),
    );
  }
}