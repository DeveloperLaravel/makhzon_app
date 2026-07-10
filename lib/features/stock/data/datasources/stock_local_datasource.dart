import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

import '../models/stock_model.dart';

abstract class StockLocalDatasource {
  Future<List<StockModel>> getStocks();

  Future<StockModel?> getStockByWarehouseAndItem({
    required int warehouseId,
    required int itemId,
  });

  Future<void> saveStock(StockModel stock);
}

@LazySingleton(as: StockLocalDatasource)
class StockLocalDatasourceImpl implements StockLocalDatasource {
  final Isar isar;

  StockLocalDatasourceImpl(this.isar);

  @override
  Future<List<StockModel>> getStocks() {
    return isar.stockModels.where().sortByUpdatedAtDesc().findAll();
  }

  @override
  Future<StockModel?> getStockByWarehouseAndItem({
    required int warehouseId,
    required int itemId,
  }) {
    return isar.stockModels
        .filter()
        .warehouseIdEqualTo(warehouseId)
        .itemIdEqualTo(itemId)
        .findFirst();
  }

  @override
  Future<void> saveStock(StockModel stock) async {
    await isar.writeTxn(() async {
      await isar.stockModels.put(stock);
    });
  }
}