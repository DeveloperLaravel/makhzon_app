import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

import '../../../../core/backup/backup_constants.dart';
import '../../../../core/backup/backup_exception.dart';

import '../../../issue/data/models/issue_model.dart';
import '../../../item/data/models/item_model.dart';
import '../../../stock/data/models/stock_model.dart';
import '../../../transfer/data/models/transfer_model.dart';
import '../../../warehouse/data/models/warehouse_model.dart';

import '../models/backup_model.dart';

abstract class BackupLocalDatasource {
  Future<BackupModel> createBackup();

  Future<void> restoreBackup(
    BackupModel backup,
  );
}

@LazySingleton(as: BackupLocalDatasource)
class BackupLocalDatasourceImpl
    implements BackupLocalDatasource {
  final Isar isar;

  BackupLocalDatasourceImpl(this.isar);

  @override
  Future<BackupModel> createBackup() async {
    try {
      final warehouses =
          await isar.warehouseModels.where().findAll();

      final items =
          await isar.itemModels.where().findAll();

      final stocks =
          await isar.stockModels.where().findAll();

      final issues =
          await isar.issueModels.where().findAll();

      final transfers =
          await isar.transferModels.where().findAll();

      return BackupModel(
        version: BackupConstants.currentVersion,
        appName: BackupConstants.appName,
        createdAt: DateTime.now().toUtc(),
        warehouses: warehouses
            .map(_warehouseToJson)
            .toList(),
        items: items
            .map(_itemToJson)
            .toList(),
        stocks: stocks
            .map(_stockToJson)
            .toList(),
        issues: issues
            .map(_issueToJson)
            .toList(),
        transfers: transfers
            .map(_transferToJson)
            .toList(),
      );
    } catch (error) {
      throw BackupException(
        'فشل قراءة البيانات من قاعدة البيانات',
        error,
      );
    }
  }

  @override
  Future<void> restoreBackup(
    BackupModel backup,
  ) async {
    _validateBackup(backup);

    try {
      // تحويل جميع البيانات قبل مسح قاعدة البيانات.
      final warehouses = backup.warehouses
          .map(_warehouseFromJson)
          .toList(growable: false);

      final items = backup.items
          .map(_itemFromJson)
          .toList(growable: false);

      final stocks = backup.stocks
          .map(_stockFromJson)
          .toList(growable: false);

      final issues = backup.issues
          .map(_issueFromJson)
          .toList(growable: false);

      final transfers = backup.transfers
          .map(_transferFromJson)
          .toList(growable: false);

      await isar.writeTxn(() async {
        // حذف الجداول التابعة أولاً.
        await isar.transferModels.clear();
        await isar.issueModels.clear();
        await isar.stockModels.clear();

        // حذف الجداول الأساسية.
        await isar.itemModels.clear();
        await isar.warehouseModels.clear();

        // استعادة الجداول الأساسية.
        await isar.warehouseModels.putAll(
          warehouses,
        );

        await isar.itemModels.putAll(
          items,
        );

        // استعادة الجداول التابعة.
        await isar.stockModels.putAll(
          stocks,
        );

        await isar.issueModels.putAll(
          issues,
        );

        await isar.transferModels.putAll(
          transfers,
        );
      });
    } on BackupException {
      rethrow;
    } catch (error) {
      throw BackupException(
        'فشل استعادة البيانات إلى قاعدة البيانات',
        error,
      );
    }
  }

  void _validateBackup(
    BackupModel backup,
  ) {
    if (backup.appName != BackupConstants.appName) {
      throw const BackupException(
        'هذا الملف لا ينتمي إلى تطبيق Makhzon',
      );
    }

    if (backup.version <= 0) {
      throw const BackupException(
        'إصدار النسخة الاحتياطية غير صالح',
      );
    }

    if (backup.version >
        BackupConstants.currentVersion) {
      throw const BackupException(
        'النسخة الاحتياطية أُنشئت بإصدار أحدث من التطبيق',
      );
    }
  }

  // Warehouse

  Map<String, dynamic> _warehouseToJson(
    WarehouseModel model,
  ) {
    return {
      'id': model.id,
      'name': model.name,
      'code': model.code,
      'location': model.location,
      'createdAt':
          model.createdAt.toUtc().toIso8601String(),
    };
  }

  WarehouseModel _warehouseFromJson(
    Map<String, dynamic> json,
  ) {
    return WarehouseModel()
      ..id = _requiredInt(json, 'id')
      ..name = _requiredString(json, 'name')
      ..code = _requiredString(json, 'code')
      ..location = _nullableString(
        json,
        'location',
      )
      ..createdAt = _requiredDate(
        json,
        'createdAt',
      );
  }

  // Item

  Map<String, dynamic> _itemToJson(
    ItemModel model,
  ) {
    return {
      'id': model.id,
      'name': model.name,
      'unit': model.unit,
      'barcode': model.barcode,
      'description': model.description,
      'createdAt':
          model.createdAt.toUtc().toIso8601String(),
    };
  }

  ItemModel _itemFromJson(
    Map<String, dynamic> json,
  ) {
    return ItemModel()
      ..id = _requiredInt(json, 'id')
      ..name = _requiredString(json, 'name')
      ..unit = _requiredString(json, 'unit')
      ..barcode = _nullableString(
        json,
        'barcode',
      )
      ..description = _nullableString(
        json,
        'description',
      )
      ..createdAt = _requiredDate(
        json,
        'createdAt',
      );
  }

  // Stock

  Map<String, dynamic> _stockToJson(
    StockModel model,
  ) {
    return {
      'id': model.id,
      'warehouseId': model.warehouseId,
      'itemId': model.itemId,
      'quantity': model.quantity,
      'updatedAt':
          model.updatedAt.toUtc().toIso8601String(),
    };
  }

  StockModel _stockFromJson(
    Map<String, dynamic> json,
  ) {
    return StockModel()
      ..id = _requiredInt(json, 'id')
      ..warehouseId = _requiredInt(
        json,
        'warehouseId',
      )
      ..itemId = _requiredInt(
        json,
        'itemId',
      )
      ..quantity = _requiredDouble(
        json,
        'quantity',
      )
      ..updatedAt = _requiredDate(
        json,
        'updatedAt',
      );
  }

  // Issue

  Map<String, dynamic> _issueToJson(
    IssueModel model,
  ) {
    return {
      'id': model.id,
      'warehouseId': model.warehouseId,
      'itemId': model.itemId,
      'quantity': model.quantity,
      'note': model.note,
      'receiverName': model.receiverName,
      'createdAt':
          model.createdAt.toUtc().toIso8601String(),
    };
  }

  IssueModel _issueFromJson(
    Map<String, dynamic> json,
  ) {
    return IssueModel()
      ..id = _requiredInt(json, 'id')
      ..warehouseId = _requiredInt(
        json,
        'warehouseId',
      )
      ..itemId = _requiredInt(
        json,
        'itemId',
      )
      ..quantity = _requiredDouble(
        json,
        'quantity',
      )
      ..note = _nullableString(
        json,
        'note',
      )
      ..receiverName = _nullableString(
        json,
        'receiverName',
      )
      ..createdAt = _requiredDate(
        json,
        'createdAt',
      );
  }

  // Transfer

  Map<String, dynamic> _transferToJson(
    TransferModel model,
  ) {
    return {
      'id': model.id,
      'fromWarehouseId': model.fromWarehouseId,
      'toWarehouseId': model.toWarehouseId,
      'itemId': model.itemId,
      'quantity': model.quantity,
      'note': model.note,
      'createdAt':
          model.createdAt.toUtc().toIso8601String(),
    };
  }

  TransferModel _transferFromJson(
    Map<String, dynamic> json,
  ) {
    return TransferModel()
      ..id = _requiredInt(json, 'id')
      ..fromWarehouseId = _requiredInt(
        json,
        'fromWarehouseId',
      )
      ..toWarehouseId = _requiredInt(
        json,
        'toWarehouseId',
      )
      ..itemId = _requiredInt(
        json,
        'itemId',
      )
      ..quantity = _requiredDouble(
        json,
        'quantity',
      )
      ..note = _nullableString(
        json,
        'note',
      )
      ..createdAt = _requiredDate(
        json,
        'createdAt',
      );
  }

  int _requiredInt(
    Map<String, dynamic> json,
    String key,
  ) {
    final value = json[key];

    if (value is int) {
      return value;
    }

    if (value is num) {
      return value.toInt();
    }

    throw BackupException(
      'الحقل $key غير صالح',
    );
  }

  double _requiredDouble(
    Map<String, dynamic> json,
    String key,
  ) {
    final value = json[key];

    if (value is num) {
      return value.toDouble();
    }

    throw BackupException(
      'الحقل $key غير صالح',
    );
  }

  String _requiredString(
    Map<String, dynamic> json,
    String key,
  ) {
    final value = json[key];

    if (value is String &&
        value.trim().isNotEmpty) {
      return value;
    }

    throw BackupException(
      'الحقل $key غير صالح',
    );
  }

  String? _nullableString(
    Map<String, dynamic> json,
    String key,
  ) {
    final value = json[key];

    if (value == null) {
      return null;
    }

    if (value is String) {
      return value;
    }

    throw BackupException(
      'الحقل $key غير صالح',
    );
  }

  DateTime _requiredDate(
    Map<String, dynamic> json,
    String key,
  ) {
    final value = json[key];

    if (value is! String) {
      throw BackupException(
        'الحقل $key غير صالح',
      );
    }

    final parsed = DateTime.tryParse(value);

    if (parsed == null) {
      throw BackupException(
        'تاريخ الحقل $key غير صالح',
      );
    }

    return parsed.toLocal();
  }
}