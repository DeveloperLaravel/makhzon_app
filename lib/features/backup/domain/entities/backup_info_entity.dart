import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_info_entity.freezed.dart';

@freezed
abstract class BackupInfoEntity with _$BackupInfoEntity {
  const factory BackupInfoEntity({
    required String filePath,
    required String fileName,
    required DateTime createdAt,
    required int warehousesCount,
    required int itemsCount,
    required int stocksCount,
    required int issuesCount,
    required int transfersCount,
  }) = _BackupInfoEntity;
}