import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_model.freezed.dart';
part 'backup_model.g.dart';

@freezed
sealed class BackupModel with _$BackupModel {
  const factory BackupModel({
    required int version,
    required String appName,
    required DateTime createdAt,

    required List<Map<String, dynamic>> warehouses,
    required List<Map<String, dynamic>> items,
    required List<Map<String, dynamic>> stocks,
    required List<Map<String, dynamic>> issues,
    required List<Map<String, dynamic>> transfers,
  }) = _BackupModel;

  factory BackupModel.fromJson(Map<String, dynamic> json) =>
      _$BackupModelFromJson(json);
}