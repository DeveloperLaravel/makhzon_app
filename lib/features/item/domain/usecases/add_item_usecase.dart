import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/item_repository.dart';

part 'add_item_usecase.freezed.dart';

@freezed
abstract class AddItemParams with _$AddItemParams {
  const factory AddItemParams({
    required String name,
    required String unit,
    String? barcode,
    String? description,
  }) = _AddItemParams;
}

@injectable
class AddItemUsecase implements Usecase<Unit, AddItemParams> {
  final ItemRepository repository;

  AddItemUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(AddItemParams params) {
    return repository.addItem(
      name: params.name,
      unit: params.unit,
      barcode: params.barcode,
      description: params.description,
    );
  }
}