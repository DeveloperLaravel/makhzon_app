import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/warehouse_entity.dart';

abstract class WarehouseRepository {
  Future<Either<Failure, List<WarehouseEntity>>> getWarehouses();

  Future<Either<Failure, Unit>> addWarehouse({
    required String name,
    required String code,
    String? location,
  });

  Future<Either<Failure, Unit>> updateWarehouse({
    required int id,
    required String name,
    required String code,
    String? location,
  });

  Future<Either<Failure, Unit>> deleteWarehouse(int id);
}