import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

import '../models/warehouse_model.dart';

abstract class WarehouseLocalDatasource {
  Future<List<WarehouseModel>> getWarehouses();
  Future<void> addWarehouse(WarehouseModel warehouse);
  Future<void> updateWarehouse(WarehouseModel warehouse);
  Future<void> deleteWarehouse(int id);
  Future<WarehouseModel?> getWarehouseById(int id);
}

@LazySingleton(as: WarehouseLocalDatasource)
class WarehouseLocalDatasourceImpl implements WarehouseLocalDatasource {
  final Isar isar;

  WarehouseLocalDatasourceImpl(this.isar);

  @override
  Future<List<WarehouseModel>> getWarehouses() {
    return isar.warehouseModels.where().sortByCreatedAtDesc().findAll();
  }

  @override
  Future<WarehouseModel?> getWarehouseById(int id) {
    return isar.warehouseModels.get(id);
  }

  @override
  Future<void> addWarehouse(WarehouseModel warehouse) async {
    await isar.writeTxn(() async {
      await isar.warehouseModels.put(warehouse);
    });
  }

  @override
  Future<void> updateWarehouse(WarehouseModel warehouse) async {
    await isar.writeTxn(() async {
      await isar.warehouseModels.put(warehouse);
    });
  }

  @override
  Future<void> deleteWarehouse(int id) async {
    await isar.writeTxn(() async {
      await isar.warehouseModels.delete(id);
    });
  }
}