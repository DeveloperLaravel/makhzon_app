import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

import '../../../stock/data/models/stock_model.dart';
import '../models/issue_model.dart';

abstract class IssueLocalDatasource {
  Future<List<IssueModel>> getIssues();

  Future<void> createIssue({
    required int warehouseId,
    required int itemId,
    required double quantity,
    String? note,
    String? receiverName,
  });
}

@LazySingleton(as: IssueLocalDatasource)
class IssueLocalDatasourceImpl implements IssueLocalDatasource {
  final Isar isar;

  IssueLocalDatasourceImpl(this.isar);

  @override
  Future<List<IssueModel>> getIssues() {
    return isar.issueModels.where().sortByCreatedAtDesc().findAll();
  }

  @override
  Future<void> createIssue({
    required int warehouseId,
    required int itemId,
    required double quantity,
    String? note,
    String? receiverName,
  }) async {
    await isar.writeTxn(() async {
      final stock = await isar.stockModels
          .filter()
          .warehouseIdEqualTo(warehouseId)
          .itemIdEqualTo(itemId)
          .findFirst();

      if (stock == null) {
        throw Exception('المادة غير موجودة في هذا المخزن');
      }

      if (stock.quantity < quantity) {
        throw Exception('الكمية غير كافية في المخزون');
      }

      stock.quantity -= quantity;
      stock.updatedAt = DateTime.now();

      await isar.stockModels.put(stock);

      final issue = IssueModel()
        ..warehouseId = warehouseId
        ..itemId = itemId
        ..quantity = quantity
        ..note = note
        ..receiverName = receiverName
        ..createdAt = DateTime.now();

      await isar.issueModels.put(issue);
    });
  }
}