import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/warehouse_entity.dart';
import '../../domain/repositories/warehouse_repository.dart';
import '../datasources/warehouse_local_datasource.dart';
import '../mappers/warehouse_mapper.dart';
import '../models/warehouse_model.dart';

@LazySingleton(as: WarehouseRepository)
class WarehouseRepositoryImpl implements WarehouseRepository {
  final WarehouseLocalDatasource datasource;

  WarehouseRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<WarehouseEntity>>> getWarehouses() async {
    try {
      final result = await datasource.getWarehouses();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> addWarehouse({
    required String name,
    required String code,
    String? location,
  }) async {
    try {
      final warehouse = WarehouseModel()
        ..name = name
        ..code = code
        ..location = location
        ..createdAt = DateTime.now();

      await datasource.addWarehouse(warehouse);

      return const Right(unit);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateWarehouse({
    required int id,
    required String name,
    required String code,
    String? location,
  }) async {
    try {
      final oldWarehouse = await datasource.getWarehouseById(id);

      if (oldWarehouse == null) {
        return const Left(Failure('المخزن غير موجود'));
      }

      oldWarehouse
        ..name = name
        ..code = code
        ..location = location;

      await datasource.updateWarehouse(oldWarehouse);

      return const Right(unit);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteWarehouse(int id) async {
    try {
      await datasource.deleteWarehouse(id);
      return const Right(unit);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}