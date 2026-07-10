import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/item_entity.dart';

abstract class ItemRepository {
  Future<Either<Failure, List<ItemEntity>>> getItems();

  Future<Either<Failure, Unit>> addItem({
    required String name,
    required String unit,
    String? barcode,
    String? description,
  });

  Future<Either<Failure, Unit>> updateItem({
    required int id,
    required String name,
    required String unit,
    String? barcode,
    String? description,
  });

  Future<Either<Failure, Unit>> deleteItem(int id);
}