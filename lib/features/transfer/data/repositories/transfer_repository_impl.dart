import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/transfer_entity.dart';
import '../../domain/repositories/transfer_repository.dart';
import '../datasources/transfer_local_datasource.dart';
import '../mappers/transfer_mapper.dart';

@LazySingleton(as: TransferRepository)
class TransferRepositoryImpl implements TransferRepository {
  final TransferLocalDatasource datasource;

  TransferRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<TransferEntity>>> getTransfers() async {
    try {
      final result = await datasource.getTransfers();

      return Right(
        result.map((transfer) => transfer.toEntity()).toList(),
      );
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> createTransfer({
    required int fromWarehouseId,
    required int toWarehouseId,
    required int itemId,
    required double quantity,
    String? note,
  }) async {
    try {
      if (fromWarehouseId == toWarehouseId) {
        return const Left(Failure('لا يمكن التحويل إلى نفس المخزن'));
      }

      if (quantity <= 0) {
        return const Left(Failure('الكمية يجب أن تكون أكبر من صفر'));
      }

      await datasource.createTransfer(
        fromWarehouseId: fromWarehouseId,
        toWarehouseId: toWarehouseId,
        itemId: itemId,
        quantity: quantity,
        note: note,
      );

      return const Right(unit);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}