import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/transfer_repository.dart';

part 'create_transfer_usecase.freezed.dart';

@freezed
abstract class CreateTransferParams with _$CreateTransferParams {
  const factory CreateTransferParams({
    required int fromWarehouseId,
    required int toWarehouseId,
    required int itemId,
    required double quantity,
    String? note,
  }) = _CreateTransferParams;
}

@injectable
class CreateTransferUsecase implements Usecase<Unit, CreateTransferParams> {
  final TransferRepository repository;

  CreateTransferUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(CreateTransferParams params) {
    return repository.createTransfer(
      fromWarehouseId: params.fromWarehouseId,
      toWarehouseId: params.toWarehouseId,
      itemId: params.itemId,
      quantity: params.quantity,
      note: params.note,
    );
  }
}