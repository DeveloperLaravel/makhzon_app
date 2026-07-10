import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_entity.freezed.dart';

@freezed
abstract class WarehouseEntity with _$WarehouseEntity {
  const factory WarehouseEntity({
    required int id,
    required String name,
    required String code,
    String? location,
    required DateTime createdAt,
  }) = _WarehouseEntity;
}