import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

import '../../../stock/data/models/stock_model.dart';
import '../models/transfer_model.dart';

abstract class TransferLocalDatasource {
  Future<List<TransferModel>> getTransfers();

  Future<void> createTransfer({
    required int fromWarehouseId,
    required int toWarehouseId,
    required int itemId,
    required double quantity,
    String? note,
  });
}

@LazySingleton(as: TransferLocalDatasource)
class TransferLocalDatasourceImpl implements TransferLocalDatasource {
  final Isar isar;

  TransferLocalDatasourceImpl(this.isar);

  @override
  Future<List<TransferModel>> getTransfers() {
    return isar.transferModels.where().sortByCreatedAtDesc().findAll();
  }

  @override
  Future<void> createTransfer({
    required int fromWarehouseId,
    required int toWarehouseId,
    required int itemId,
    required double quantity,
    String? note,
  }) async {
    await isar.writeTxn(() async {
      final fromStock = await isar.stockModels
          .filter()
          .warehouseIdEqualTo(fromWarehouseId)
          .itemIdEqualTo(itemId)
          .findFirst();

      if (fromStock == null) {
        throw Exception('المادة غير موجودة في مخزن المصدر');
      }

      if (fromStock.quantity < quantity) {
        throw Exception('الكمية غير كافية في مخزن المصدر');
      }

      final toStock = await isar.stockModels
          .filter()
          .warehouseIdEqualTo(toWarehouseId)
          .itemIdEqualTo(itemId)
          .findFirst();

      fromStock.quantity -= quantity;
      fromStock.updatedAt = DateTime.now();

      await isar.stockModels.put(fromStock);

      if (toStock == null) {
        final newStock = StockModel()
          ..warehouseId = toWarehouseId
          ..itemId = itemId
          ..quantity = quantity
          ..updatedAt = DateTime.now();

        await isar.stockModels.put(newStock);
      } else {
        toStock.quantity += quantity;
        toStock.updatedAt = DateTime.now();

        await isar.stockModels.put(toStock);
      }

      final transfer = TransferModel()
        ..fromWarehouseId = fromWarehouseId
        ..toWarehouseId = toWarehouseId
        ..itemId = itemId
        ..quantity = quantity
        ..note = note
        ..createdAt = DateTime.now();

      await isar.transferModels.put(transfer);
    });
  }
}