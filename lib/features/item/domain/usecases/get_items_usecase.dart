import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/item_entity.dart';
import '../repositories/item_repository.dart';

@injectable
class GetItemsUsecase implements Usecase<List<ItemEntity>, NoParams> {
  final ItemRepository repository;

  GetItemsUsecase(this.repository);

  @override
  Future<Either<Failure, List<ItemEntity>>> call(NoParams params) {
    return repository.getItems();
  }
}