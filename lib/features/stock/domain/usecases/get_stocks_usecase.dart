import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/stock_entity.dart';
import '../repositories/stock_repository.dart';

@injectable
class GetStocksUsecase implements Usecase<List<StockEntity>, NoParams> {
  final StockRepository repository;

  GetStocksUsecase(this.repository);

  @override
  Future<Either<Failure, List<StockEntity>>> call(NoParams params) {
    return repository.getStocks();
  }
}