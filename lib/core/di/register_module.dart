import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/issue/data/models/issue_model.dart';
import '../../features/item/data/models/item_model.dart';
import '../../features/stock/data/models/stock_model.dart';
import '../../features/transfer/data/models/transfer_model.dart';
import '../../features/warehouse/data/models/warehouse_model.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  SharedPreferencesAsync get sharedPreferencesAsync {
    return SharedPreferencesAsync();
  }

  @preResolve
  @lazySingleton
  Future<Isar> get isar async {
    final directory = await getApplicationDocumentsDirectory();

    return Isar.open(
      [
        WarehouseModelSchema,
        ItemModelSchema,
        StockModelSchema,
        IssueModelSchema,
        TransferModelSchema,
      ],
      directory: directory.path,
    );
  }
}