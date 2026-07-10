import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/warehouse_repository.dart';

part 'add_warehouse_usecase.freezed.dart';

@freezed
abstract class AddWarehouseParams with _$AddWarehouseParams {
  const factory AddWarehouseParams({
    required String name,
    required String code,
    String? location,
  }) = _AddWarehouseParams;
}

@injectable
class AddWarehouseUsecase implements Usecase<Unit, AddWarehouseParams> {
  final WarehouseRepository repository;

  AddWarehouseUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(AddWarehouseParams params) {
    return repository.addWarehouse(
      name: params.name,
      code: params.code,
      location: params.location,
    );
  }
}