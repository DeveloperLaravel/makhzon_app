import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/backup_info_entity.dart';

part 'backup_state.freezed.dart';

@freezed
sealed class BackupState with _$BackupState {
  const factory BackupState.initial() = BackupInitial;

  const factory BackupState.loading() = BackupLoading;

  const factory BackupState.created({
    required BackupInfoEntity backup,
  }) = BackupCreatedState;

  const factory BackupState.success({
    required String message,
  }) = BackupSuccess;

  const factory BackupState.failure({
    required String message,
  }) = BackupFailure;
}