import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/warehouse_repository.dart';

part 'update_warehouse_usecase.freezed.dart';

@freezed
abstract class UpdateWarehouseParams with _$UpdateWarehouseParams {
  const factory UpdateWarehouseParams({
    required int id,
    required String name,
    required String code,
    String? location,
  }) = _UpdateWarehouseParams;
}

@injectable
class UpdateWarehouseUsecase implements Usecase<Unit, UpdateWarehouseParams> {
  final WarehouseRepository repository;

  UpdateWarehouseUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(UpdateWarehouseParams params) {
    return repository.updateWarehouse(
      id: params.id,
      name: params.name,
      code: params.code,
      location: params.location,
    );
  }
}