import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

import '../models/item_model.dart';

abstract class ItemLocalDatasource {
  Future<List<ItemModel>> getItems();
  Future<ItemModel?> getItemById(int id);
  Future<void> addItem(ItemModel item);
  Future<void> updateItem(ItemModel item);
  Future<void> deleteItem(int id);
}

@LazySingleton(as: ItemLocalDatasource)
class ItemLocalDatasourceImpl implements ItemLocalDatasource {
  final Isar isar;

  ItemLocalDatasourceImpl(this.isar);

  @override
  Future<List<ItemModel>> getItems() {
    return isar.itemModels.where().sortByCreatedAtDesc().findAll();
  }

  @override
  Future<ItemModel?> getItemById(int id) {
    return isar.itemModels.get(id);
  }

  @override
  Future<void> addItem(ItemModel item) async {
    await isar.writeTxn(() async {
      await isar.itemModels.put(item);
    });
  }

  @override
  Future<void> updateItem(ItemModel item) async {
    await isar.writeTxn(() async {
      await isar.itemModels.put(item);
    });
  }

  @override
  Future<void> deleteItem(int id) async {
    await isar.writeTxn(() async {
      await isar.itemModels.delete(id);
    });
  }
}