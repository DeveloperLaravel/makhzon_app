import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/item_repository.dart';

@injectable
class DeleteItemUsecase implements Usecase<Unit, int> {
  final ItemRepository repository;

  DeleteItemUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(int id) {
    return repository.deleteItem(id);
  }
}