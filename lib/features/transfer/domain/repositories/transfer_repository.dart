import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/transfer_entity.dart';

abstract class TransferRepository {
  Future<Either<Failure, List<TransferEntity>>> getTransfers();

  Future<Either<Failure, Unit>> createTransfer({
    required int fromWarehouseId,
    required int toWarehouseId,
    required int itemId,
    required double quantity,
    String? note,
  });
}