import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/transfer_entity.dart';
import '../repositories/transfer_repository.dart';

@injectable
class GetTransfersUsecase implements Usecase<List<TransferEntity>, NoParams> {
  final TransferRepository repository;

  GetTransfersUsecase(this.repository);

  @override
  Future<Either<Failure, List<TransferEntity>>> call(NoParams params) {
    return repository.getTransfers();
  }
}