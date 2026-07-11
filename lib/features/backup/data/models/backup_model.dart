import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_model.freezed.dart';
part 'backup_model.g.dart';

@freezed
abstract class BackupModel with _$BackupModel {
  const factory BackupModel({
    required int version,
    required String appName,
    required DateTime createdAt,

    @Default(<Map<String, dynamic>>[])
    List<Map<String, dynamic>> warehouses,

    @Default(<Map<String, dynamic>>[])
    List<Map<String, dynamic>> items,

    @Default(<Map<String, dynamic>>[])
    List<Map<String, dynamic>> stocks,

    @Default(<Map<String, dynamic>>[])
    List<Map<String, dynamic>> issues,

    @Default(<Map<String, dynamic>>[])
    List<Map<String, dynamic>> transfers,
  }) = _BackupModel;

  factory BackupModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return _$BackupModelFromJson(json);
  }
}