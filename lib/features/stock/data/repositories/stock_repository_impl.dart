import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/stock_entity.dart';
import '../../domain/repositories/stock_repository.dart';
import '../datasources/stock_local_datasource.dart';
import '../mappers/stock_mapper.dart';
import '../models/stock_model.dart';

@LazySingleton(as: StockRepository)
class StockRepositoryImpl implements StockRepository {
  final StockLocalDatasource datasource;

  StockRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<StockEntity>>> getStocks() async {
    try {
      final result = await datasource.getStocks();

      return Right(result.map((stock) => stock.toEntity()).toList());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> addStockQuantity({
    required int warehouseId,
    required int itemId,
    required double quantity,
  }) async {
    try {
      if (quantity <= 0) {
        return const Left(Failure('الكمية يجب أن تكون أكبر من صفر'));
      }

      final oldStock = await datasource.getStockByWarehouseAndItem(
        warehouseId: warehouseId,
        itemId: itemId,
      );

      if (oldStock == null) {
        final newStock = StockModel()
          ..warehouseId = warehouseId
          ..itemId = itemId
          ..quantity = quantity
          ..updatedAt = DateTime.now();

        await datasource.saveStock(newStock);
      } else {
        oldStock.quantity += quantity;
        oldStock.updatedAt = DateTime.now();

        await datasource.saveStock(oldStock);
      }

      return const Right(unit);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}