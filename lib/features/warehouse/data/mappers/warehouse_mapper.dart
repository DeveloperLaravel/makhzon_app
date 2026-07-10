
import 'package:isar_community/isar.dart';

import '../../domain/entities/warehouse_entity.dart';
import '../models/warehouse_model.dart';

extension WarehouseModelMapper on WarehouseModel {
  WarehouseEntity toEntity() {
    return WarehouseEntity(
      id: id,
      name: name,
      code: code,
      location: location,
      createdAt: createdAt,
    );
  }
}

extension WarehouseEntityMapper on WarehouseEntity {
  WarehouseModel toModel() {
    return WarehouseModel()
      ..id = id == 0 ? Isar.autoIncrement : id
      ..name = name
      ..code = code
      ..location = location
      ..createdAt = createdAt;
  }
}