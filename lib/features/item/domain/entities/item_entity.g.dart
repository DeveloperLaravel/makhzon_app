// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemEntity _$ItemEntityFromJson(Map<String, dynamic> json) => _ItemEntity(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  unit: json['unit'] as String,
  barcode: json['barcode'] as String?,
  description: json['description'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ItemEntityToJson(_ItemEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'barcode': instance.barcode,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
    };
