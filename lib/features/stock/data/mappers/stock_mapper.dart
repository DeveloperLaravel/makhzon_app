import 'package:isar_community/isar.dart';

import '../../domain/entities/stock_entity.dart';
import '../models/stock_model.dart';

extension StockModelMapper on StockModel {
  StockEntity toEntity() {
    return StockEntity(
      id: id,
      warehouseId: warehouseId,
      itemId: itemId,
      quantity: quantity,
      updatedAt: updatedAt,
    );
  }
}

extension StockEntityMapper on StockEntity {
  StockModel toModel() {
    return StockModel()
      ..id = id == 0 ? Isar.autoIncrement : id
      ..warehouseId = warehouseId
      ..itemId = itemId
      ..quantity = quantity
      ..updatedAt = updatedAt;
  }
}