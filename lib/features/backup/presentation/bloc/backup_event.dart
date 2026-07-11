import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_event.freezed.dart';

@freezed
sealed class BackupEvent with _$BackupEvent {
  const factory BackupEvent.createRequested() =
      BackupCreateRequested;

  const factory BackupEvent.shareRequested({
    required String filePath,
  }) = BackupShareRequested;

  const factory BackupEvent.pickAndRestoreRequested() =
      BackupPickAndRestoreRequested;

  const factory BackupEvent.restoreConfirmed({
    required String filePath,
  }) = BackupRestoreConfirmed;

  const factory BackupEvent.messageConsumed() =
      BackupMessageConsumed;
}