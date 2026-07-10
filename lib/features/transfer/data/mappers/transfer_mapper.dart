
import 'package:isar_community/isar.dart';

import '../../domain/entities/transfer_entity.dart';
import '../models/transfer_model.dart';

extension TransferModelMapper on TransferModel {
  TransferEntity toEntity() {
    return TransferEntity(
      id: id,
      fromWarehouseId: fromWarehouseId,
      toWarehouseId: toWarehouseId,
      itemId: itemId,
      quantity: quantity,
      note: note,
      createdAt: createdAt,
    );
  }
}

extension TransferEntityMapper on TransferEntity {
  TransferModel toModel() {
    return TransferModel()
      ..id = id == 0 ? Isar.autoIncrement : id
      ..fromWarehouseId = fromWarehouseId
      ..toWarehouseId = toWarehouseId
      ..itemId = itemId
      ..quantity = quantity
      ..note = note
      ..createdAt = createdAt;
  }
}