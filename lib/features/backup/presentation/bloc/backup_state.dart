import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/backup_info_entity.dart';

part 'backup_state.freezed.dart';

@freezed
abstract class BackupState with _$BackupState {
  const factory BackupState({
    @Default(false)
    bool isLoading,

    BackupInfoEntity? latestBackup,

    String? selectedRestorePath,

    String? successMessage,

    String? errorMessage,
  }) = _BackupState;
}