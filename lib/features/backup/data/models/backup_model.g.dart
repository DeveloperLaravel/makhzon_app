// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BackupModel _$BackupModelFromJson(Map<String, dynamic> json) => _BackupModel(
  version: (json['version'] as num).toInt(),
  appName: json['appName'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  warehouses: (json['warehouses'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  items: (json['items'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  stocks: (json['stocks'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  issues: (json['issues'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  transfers: (json['transfers'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$BackupModelToJson(_BackupModel instance) =>
    <String, dynamic>{
      'version': instance.version,
      'appName': instance.appName,
      'createdAt': instance.createdAt.toIso8601String(),
      'warehouses': instance.warehouses,
      'items': instance.items,
      'stocks': instance.stocks,
      'issues': instance.issues,
      'transfers': instance.transfers,
    };
