import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_event.freezed.dart';

@freezed
class BackupEvent with _$BackupEvent {
  const factory BackupEvent.backupCreated() = BackupCreated;

  const factory BackupEvent.backupShared({
    required String filePath,
  }) = BackupShared;

  const factory BackupEvent.backupRestored({
    required String filePath,
  }) = BackupRestored;
}