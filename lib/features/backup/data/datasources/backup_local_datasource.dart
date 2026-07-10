
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

import '../../../../core/backup/backup_constants.dart';
import '../../../../core/backup/backup_exception.dart';

import '../../../warehouse/data/models/warehouse_model.dart';
import '../../../item/data/models/item_model.dart';
import '../../../stock/data/models/stock_model.dart';
import '../../../issue/data/models/issue_model.dart';
import '../../../transfer/data/models/transfer_model.dart';

import '../models/backup_model.dart';

abstract class BackupLocalDatasource {
  Future<BackupModel> createBackup();

  Future<void> restoreBackup(BackupModel backup);
}

@LazySingleton(as: BackupLocalDatasource)
class BackupLocalDatasourceImpl implements BackupLocalDatasource {
  final Isar isar;

  BackupLocalDatasourceImpl(this.isar);

  @override
  Future<BackupModel> createBackup() async {
    try {
      final warehouses = await isar.warehouseModels.where().findAll();
      final items = await isar.itemModels.where().findAll();
      final stocks = await isar.stockModels.where().findAll();
      final issues = await isar.issueModels.where().findAll();
      final transfers = await isar.transferModels.where().findAll();

      return BackupModel(
        version: BackupConstants.currentVersion,
        appName: BackupConstants.appName,
        createdAt: DateTime.now(),

        warehouses: warehouses.map(_warehouseToJson).toList(),
        items: items.map(_itemToJson).toList(),
        stocks: stocks.map(_stockToJson).toList(),
        issues: issues.map(_issueToJson).toList(),
        transfers: transfers.map(_transferToJson).toList(),
      );
    } catch (e) {
      throw BackupException(
        'فشل قراءة البيانات من قاعدة البيانات: $e',
      );
    }
  }

  @override
  Future<void> restoreBackup(BackupModel backup) async {
    if (backup.appName != BackupConstants.appName) {
      throw const BackupException(
        'هذا الملف لا ينتمي إلى تطبيق Makhzon',
      );
    }

    if (backup.version > BackupConstants.currentVersion) {
      throw const BackupException(
        'إصدار النسخة الاحتياطية أحدث من إصدار التطبيق',
      );
    }

    try {
      final warehouses = backup.warehouses
          .map(_warehouseFromJson)
          .toList();

      final items = backup.items
          .map(_itemFromJson)
          .toList();

      final stocks = backup.stocks
          .map(_stockFromJson)
          .toList();

      final issues = backup.issues
          .map(_issueFromJson)
          .toList();

      final transfers = backup.transfers
          .map(_transferFromJson)
          .toList();

      await isar.writeTxn(() async {
        // نمسح بالترتيب: الحركات والمخزون أولًا.
        await isar.transferModels.clear();
        await isar.issueModels.clear();
        await isar.stockModels.clear();
        await isar.itemModels.clear();
        await isar.warehouseModels.clear();

        // ثم نسترجع البيانات الأساسية أولًا.
        await isar.warehouseModels.putAll(warehouses);
        await isar.itemModels.putAll(items);
        await isar.stockModels.putAll(stocks);
        await isar.issueModels.putAll(issues);
        await isar.transferModels.putAll(transfers);
      });
    } catch (e) {
      throw BackupException(
        'فشل استعادة النسخة الاحتياطية: $e',
      );
    }
  }

  Map<String, dynamic> _warehouseToJson(WarehouseModel model) {
    return {
      'id': model.id,
      'name': model.name,
      'code': model.code,
      'location': model.location,
      'createdAt': model.createdAt.toIso8601String(),
    };
  }

  WarehouseModel _warehouseFromJson(Map<String, dynamic> json) {
    return WarehouseModel()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..code = json['code'] as String
      ..location = json['location'] as String?
      ..createdAt = DateTime.parse(json['createdAt'] as String);
  }

  Map<String, dynamic> _itemToJson(ItemModel model) {
    return {
      'id': model.id,
      'name': model.name,
      'unit': model.unit,
      'barcode': model.barcode,
      'description': model.description,
      'createdAt': model.createdAt.toIso8601String(),
    };
  }

  ItemModel _itemFromJson(Map<String, dynamic> json) {
    return ItemModel()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..unit = json['unit'] as String
      ..barcode = json['barcode'] as String?
      ..description = json['description'] as String?
      ..createdAt = DateTime.parse(json['createdAt'] as String);
  }

  Map<String, dynamic> _stockToJson(StockModel model) {
    return {
      'id': model.id,
      'warehouseId': model.warehouseId,
      'itemId': model.itemId,
      'quantity': model.quantity,
      'updatedAt': model.updatedAt.toIso8601String(),
    };
  }

  StockModel _stockFromJson(Map<String, dynamic> json) {
    return StockModel()
      ..id = json['id'] as int
      ..warehouseId = json['warehouseId'] as int
      ..itemId = json['itemId'] as int
      ..quantity = (json['quantity'] as num).toDouble()
      ..updatedAt = DateTime.parse(json['updatedAt'] as String);
  }

  Map<String, dynamic> _issueToJson(IssueModel model) {
    return {
      'id': model.id,
      'warehouseId': model.warehouseId,
      'itemId': model.itemId,
      'quantity': model.quantity,
      'note': model.note,
      'receiverName': model.receiverName,
      'createdAt': model.createdAt.toIso8601String(),
    };
  }

  IssueModel _issueFromJson(Map<String, dynamic> json) {
    return IssueModel()
      ..id = json['id'] as int
      ..warehouseId = json['warehouseId'] as int
      ..itemId = json['itemId'] as int
      ..quantity = (json['quantity'] as num).toDouble()
      ..note = json['note'] as String?
      ..receiverName = json['receiverName'] as String?
      ..createdAt = DateTime.parse(json['createdAt'] as String);
  }

  Map<String, dynamic> _transferToJson(TransferModel model) {
    return {
      'id': model.id,
      'fromWarehouseId': model.fromWarehouseId,
      'toWarehouseId': model.toWarehouseId,
      'itemId': model.itemId,
      'quantity': model.quantity,
      'note': model.note,
      'createdAt': model.createdAt.toIso8601String(),
    };
  }

  TransferModel _transferFromJson(Map<String, dynamic> json) {
    return TransferModel()
      ..id = json['id'] as int
      ..fromWarehouseId = json['fromWarehouseId'] as int
      ..toWarehouseId = json['toWarehouseId'] as int
      ..itemId = json['itemId'] as int
      ..quantity = (json['quantity'] as num).toDouble()
      ..note = json['note'] as String?
      ..createdAt = DateTime.parse(json['createdAt'] as String);
  }
}