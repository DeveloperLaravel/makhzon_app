import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/warehouse_entity.dart';
import '../repositories/warehouse_repository.dart';

@injectable
class GetWarehousesUsecase
    implements Usecase<List<WarehouseEntity>, NoParams> {
  final WarehouseRepository repository;

  GetWarehousesUsecase(this.repository);

  @override
  Future<Either<Failure, List<WarehouseEntity>>> call(NoParams params) {
    return repository.getWarehouses();
  }
}