import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/item_entity.dart';
import '../../domain/repositories/item_repository.dart';
import '../datasources/item_local_datasource.dart';
import '../mappers/item_mapper.dart';
import '../models/item_model.dart';

@LazySingleton(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  final ItemLocalDatasource datasource;

  ItemRepositoryImpl(this.datasource);

  @override
  Future<dartz.Either<Failure, List<ItemEntity>>> getItems() async {
    try {
      final result = await datasource.getItems();
      return dartz.Right(result.map((item) => item.toEntity()).toList());
    } catch (e) {
      return dartz.Left(Failure(e.toString()));
    }
  }

 @override
  Future<dartz.Either<Failure, dartz.Unit>> addItem({
  required String name,
  required String unit,
  String? barcode,
  String? description,
}) async {
  try {
    if (name.trim().isEmpty) {
      return const dartz.Left(Failure('اسم المادة مطلوب'));
    }

    if (unit.trim().isEmpty) {
      return const dartz.Left(Failure('وحدة القياس مطلوبة'));
    }

    final item = ItemModel()
      ..name = name.trim()
      ..unit = unit.trim()
      ..barcode = barcode?.trim().isEmpty == true
          ? null
          : barcode?.trim()
      ..description = description?.trim().isEmpty == true
          ? null
          : description?.trim()
      ..createdAt = DateTime.now();

    await datasource.addItem(item);

    return const dartz.Right(dartz.unit);
  } catch (e) {
    return dartz.Left(Failure(e.toString()));
  }
}
  @override
  Future<dartz.Either<Failure, dartz.Unit>> updateItem({
    required int id,
    required String name,
    required String unit,
    String? barcode,
    String? description,
  }) async {
    try {
      final oldItem = await datasource.getItemById(id);

      if (oldItem == null) {
        return const dartz.Left(Failure('المادة غير موجودة'));
      }

      oldItem
        ..name = name.trim()
        ..unit = unit.trim()
        ..barcode = barcode?.trim().isEmpty == true ? null : barcode?.trim()
        ..description =
            description?.trim().isEmpty == true ? null : description?.trim();

      await datasource.updateItem(oldItem);

      return const dartz.Right(dartz.unit);
    } catch (e) {
      return dartz.Left(Failure(e.toString()));
    }
  }

  @override
  Future<dartz.Either<Failure, dartz.Unit>> deleteItem(int id) async {
    try {
      await datasource.deleteItem(id);
      return const dartz.Right(dartz.unit);
    } catch (e) {
      return dartz.Left(Failure(e.toString()));
    }
  }
}