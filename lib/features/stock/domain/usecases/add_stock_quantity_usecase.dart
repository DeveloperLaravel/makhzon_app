import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/stock_repository.dart';

part 'add_stock_quantity_usecase.freezed.dart';

@freezed
abstract class AddStockQuantityParams with _$AddStockQuantityParams {
  const factory AddStockQuantityParams({
    required int warehouseId,
    required int itemId,
    required double quantity,
  }) = _AddStockQuantityParams;
}

@injectable
class AddStockQuantityUsecase
    implements Usecase<Unit, AddStockQuantityParams> {
  final StockRepository repository;

  AddStockQuantityUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(AddStockQuantityParams params) {
    return repository.addStockQuantity(
      warehouseId: params.warehouseId,
      itemId: params.itemId,
      quantity: params.quantity,
    );
  }
}