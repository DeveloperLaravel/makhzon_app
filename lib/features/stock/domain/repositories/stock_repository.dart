import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/stock_entity.dart';

abstract class StockRepository {
  Future<Either<Failure, List<StockEntity>>> getStocks();

  Future<Either<Failure, Unit>> addStockQuantity({
    required int warehouseId,
    required int itemId,
    required double quantity,
  });
}