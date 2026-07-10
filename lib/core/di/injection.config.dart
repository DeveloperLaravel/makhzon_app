// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:isar_community/isar.dart' as _i214;
import 'package:makhzon_app/core/backup/backup_file_service.dart' as _i888;
import 'package:makhzon_app/core/di/register_module.dart' as _i709;
import 'package:makhzon_app/features/backup/data/datasources/backup_local_datasource.dart'
    as _i50;
import 'package:makhzon_app/features/backup/data/repositories/backup_repository_impl.dart'
    as _i999;
import 'package:makhzon_app/features/backup/domain/repositories/backup_repository.dart'
    as _i433;
import 'package:makhzon_app/features/backup/domain/usecase/create_backup_usecase.dart'
    as _i453;
import 'package:makhzon_app/features/backup/domain/usecase/restore_backup_usecase.dart'
    as _i862;
import 'package:makhzon_app/features/backup/domain/usecase/share_backup_usecase.dart'
    as _i523;
import 'package:makhzon_app/features/backup/presentation/bloc/backup_bloc.dart'
    as _i737;
import 'package:makhzon_app/features/issue/data/datasources/issue_local_datasource.dart'
    as _i846;
import 'package:makhzon_app/features/issue/data/repositories/issue_repository_impl.dart'
    as _i669;
import 'package:makhzon_app/features/issue/domain/repositories/issue_repository.dart'
    as _i656;
import 'package:makhzon_app/features/issue/domain/usecases/create_issue_usecase.dart'
    as _i800;
import 'package:makhzon_app/features/issue/domain/usecases/get_issues_usecase.dart'
    as _i921;
import 'package:makhzon_app/features/issue/presentation/bloc/issue_bloc.dart'
    as _i524;
import 'package:makhzon_app/features/item/data/datasources/item_local_datasource.dart'
    as _i664;
import 'package:makhzon_app/features/item/data/repositories/item_repository_impl.dart'
    as _i899;
import 'package:makhzon_app/features/item/domain/repositories/item_repository.dart'
    as _i637;
import 'package:makhzon_app/features/item/domain/usecases/add_item_usecase.dart'
    as _i792;
import 'package:makhzon_app/features/item/domain/usecases/delete_item_usecase.dart'
    as _i571;
import 'package:makhzon_app/features/item/domain/usecases/get_items_usecase.dart'
    as _i493;
import 'package:makhzon_app/features/item/domain/usecases/update_item_usecase.dart'
    as _i690;
import 'package:makhzon_app/features/item/presentation/bloc/item_bloc.dart'
    as _i343;
import 'package:makhzon_app/features/stock/data/datasources/stock_local_datasource.dart'
    as _i503;
import 'package:makhzon_app/features/stock/data/repositories/stock_repository_impl.dart'
    as _i121;
import 'package:makhzon_app/features/stock/domain/repositories/stock_repository.dart'
    as _i13;
import 'package:makhzon_app/features/stock/domain/usecases/add_stock_quantity_usecase.dart'
    as _i466;
import 'package:makhzon_app/features/stock/domain/usecases/get_stocks_usecase.dart'
    as _i43;
import 'package:makhzon_app/features/stock/presentation/bloc/stock_bloc.dart'
    as _i566;
import 'package:makhzon_app/features/transfer/data/datasources/transfer_local_datasource.dart'
    as _i198;
import 'package:makhzon_app/features/transfer/data/repositories/transfer_repository_impl.dart'
    as _i611;
import 'package:makhzon_app/features/transfer/domain/repositories/transfer_repository.dart'
    as _i522;
import 'package:makhzon_app/features/transfer/domain/usecases/create_transfer_usecase.dart'
    as _i410;
import 'package:makhzon_app/features/transfer/domain/usecases/get_transfers_usecase.dart'
    as _i688;
import 'package:makhzon_app/features/transfer/presentation/bloc/transfer_bloc.dart'
    as _i289;
import 'package:makhzon_app/features/warehouse/data/datasources/warehouse_local_datasource.dart'
    as _i173;
import 'package:makhzon_app/features/warehouse/data/repositories/warehouse_repository_impl.dart'
    as _i272;
import 'package:makhzon_app/features/warehouse/domain/repositories/warehouse_repository.dart'
    as _i919;
import 'package:makhzon_app/features/warehouse/domain/usecases/add_warehouse_usecase.dart'
    as _i496;
import 'package:makhzon_app/features/warehouse/domain/usecases/delete_warehouse_usecase.dart'
    as _i752;
import 'package:makhzon_app/features/warehouse/domain/usecases/get_warehouses_usecase.dart'
    as _i304;
import 'package:makhzon_app/features/warehouse/domain/usecases/update_warehouse_usecase.dart'
    as _i514;
import 'package:makhzon_app/features/warehouse/presentation/bloc/warehouse_bloc.dart'
    as _i324;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i888.BackupFileService>(() => _i888.BackupFileService());
    await gh.lazySingletonAsync<_i214.Isar>(
      () => registerModule.isar,
      preResolve: true,
    );
    gh.lazySingleton<_i198.TransferLocalDatasource>(
      () => _i198.TransferLocalDatasourceImpl(gh<_i214.Isar>()),
    );
    gh.lazySingleton<_i173.WarehouseLocalDatasource>(
      () => _i173.WarehouseLocalDatasourceImpl(gh<_i214.Isar>()),
    );
    gh.lazySingleton<_i919.WarehouseRepository>(
      () => _i272.WarehouseRepositoryImpl(gh<_i173.WarehouseLocalDatasource>()),
    );
    gh.lazySingleton<_i846.IssueLocalDatasource>(
      () => _i846.IssueLocalDatasourceImpl(gh<_i214.Isar>()),
    );
    gh.lazySingleton<_i50.BackupLocalDatasource>(
      () => _i50.BackupLocalDatasourceImpl(gh<_i214.Isar>()),
    );
    gh.lazySingleton<_i503.StockLocalDatasource>(
      () => _i503.StockLocalDatasourceImpl(gh<_i214.Isar>()),
    );
    gh.lazySingleton<_i664.ItemLocalDatasource>(
      () => _i664.ItemLocalDatasourceImpl(gh<_i214.Isar>()),
    );
    gh.lazySingleton<_i522.TransferRepository>(
      () => _i611.TransferRepositoryImpl(gh<_i198.TransferLocalDatasource>()),
    );
    gh.factory<_i496.AddWarehouseUsecase>(
      () => _i496.AddWarehouseUsecase(gh<_i919.WarehouseRepository>()),
    );
    gh.factory<_i752.DeleteWarehouseUsecase>(
      () => _i752.DeleteWarehouseUsecase(gh<_i919.WarehouseRepository>()),
    );
    gh.factory<_i304.GetWarehousesUsecase>(
      () => _i304.GetWarehousesUsecase(gh<_i919.WarehouseRepository>()),
    );
    gh.factory<_i514.UpdateWarehouseUsecase>(
      () => _i514.UpdateWarehouseUsecase(gh<_i919.WarehouseRepository>()),
    );
    gh.factory<_i410.CreateTransferUsecase>(
      () => _i410.CreateTransferUsecase(gh<_i522.TransferRepository>()),
    );
    gh.factory<_i688.GetTransfersUsecase>(
      () => _i688.GetTransfersUsecase(gh<_i522.TransferRepository>()),
    );
    gh.lazySingleton<_i433.BackupRepository>(
      () => _i999.BackupRepositoryImpl(
        datasource: gh<_i50.BackupLocalDatasource>(),
        fileService: gh<_i888.BackupFileService>(),
      ),
    );
    gh.lazySingleton<_i656.IssueRepository>(
      () => _i669.IssueRepositoryImpl(gh<_i846.IssueLocalDatasource>()),
    );
    gh.lazySingleton<_i637.ItemRepository>(
      () => _i899.ItemRepositoryImpl(gh<_i664.ItemLocalDatasource>()),
    );
    gh.factory<_i453.CreateBackupUsecase>(
      () => _i453.CreateBackupUsecase(gh<_i433.BackupRepository>()),
    );
    gh.factory<_i862.RestoreBackupUsecase>(
      () => _i862.RestoreBackupUsecase(gh<_i433.BackupRepository>()),
    );
    gh.factory<_i523.ShareBackupUsecase>(
      () => _i523.ShareBackupUsecase(gh<_i433.BackupRepository>()),
    );
    gh.factory<_i324.WarehouseBloc>(
      () => _i324.WarehouseBloc(
        getWarehouses: gh<_i304.GetWarehousesUsecase>(),
        addWarehouse: gh<_i496.AddWarehouseUsecase>(),
        updateWarehouse: gh<_i514.UpdateWarehouseUsecase>(),
        deleteWarehouse: gh<_i752.DeleteWarehouseUsecase>(),
      ),
    );
    gh.factory<_i800.CreateIssueUsecase>(
      () => _i800.CreateIssueUsecase(gh<_i656.IssueRepository>()),
    );
    gh.factory<_i921.GetIssuesUsecase>(
      () => _i921.GetIssuesUsecase(gh<_i656.IssueRepository>()),
    );
    gh.factory<_i289.TransferBloc>(
      () => _i289.TransferBloc(
        getTransfers: gh<_i688.GetTransfersUsecase>(),
        createTransfer: gh<_i410.CreateTransferUsecase>(),
      ),
    );
    gh.factory<_i524.IssueBloc>(
      () => _i524.IssueBloc(
        getIssues: gh<_i921.GetIssuesUsecase>(),
        createIssue: gh<_i800.CreateIssueUsecase>(),
      ),
    );
    gh.lazySingleton<_i13.StockRepository>(
      () => _i121.StockRepositoryImpl(gh<_i503.StockLocalDatasource>()),
    );
    gh.factory<_i466.AddStockQuantityUsecase>(
      () => _i466.AddStockQuantityUsecase(gh<_i13.StockRepository>()),
    );
    gh.factory<_i43.GetStocksUsecase>(
      () => _i43.GetStocksUsecase(gh<_i13.StockRepository>()),
    );
    gh.factory<_i737.BackupBloc>(
      () => _i737.BackupBloc(
        createBackup: gh<_i453.CreateBackupUsecase>(),
        restoreBackup: gh<_i862.RestoreBackupUsecase>(),
        shareBackup: gh<_i523.ShareBackupUsecase>(),
      ),
    );
    gh.factory<_i566.StockBloc>(
      () => _i566.StockBloc(
        getStocks: gh<_i43.GetStocksUsecase>(),
        addStockQuantity: gh<_i466.AddStockQuantityUsecase>(),
      ),
    );
    gh.factory<_i792.AddItemUsecase>(
      () => _i792.AddItemUsecase(gh<_i637.ItemRepository>()),
    );
    gh.factory<_i571.DeleteItemUsecase>(
      () => _i571.DeleteItemUsecase(gh<_i637.ItemRepository>()),
    );
    gh.factory<_i493.GetItemsUsecase>(
      () => _i493.GetItemsUsecase(gh<_i637.ItemRepository>()),
    );
    gh.factory<_i690.UpdateItemUsecase>(
      () => _i690.UpdateItemUsecase(gh<_i637.ItemRepository>()),
    );
    gh.factory<_i343.ItemBloc>(
      () => _i343.ItemBloc(
        getItems: gh<_i493.GetItemsUsecase>(),
        addItem: gh<_i792.AddItemUsecase>(),
        updateItem: gh<_i690.UpdateItemUsecase>(),
        deleteItem: gh<_i571.DeleteItemUsecase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i709.RegisterModule {}
