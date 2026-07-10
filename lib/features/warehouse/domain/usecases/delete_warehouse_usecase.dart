import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/warehouse_repository.dart';

@injectable
class DeleteWarehouseUsecase implements Usecase<Unit, int> {
  final WarehouseRepository repository;

  DeleteWarehouseUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(int id) {
    return repository.deleteWarehouse(id);
  }
}