import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/item_repository.dart';

part 'update_item_usecase.freezed.dart';

@freezed
abstract class UpdateItemParams with _$UpdateItemParams {
  const factory UpdateItemParams({
    required int id,
    required String name,
    required String unit,
    String? barcode,
    String? description,
  }) = _UpdateItemParams;
}

@injectable
class UpdateItemUsecase implements Usecase<Unit, UpdateItemParams> {
  final ItemRepository repository;

  UpdateItemUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(UpdateItemParams params) {
    return repository.updateItem(
      id: params.id,
      name: params.name,
      unit: params.unit,
      barcode: params.barcode,
      description: params.description,
    );
  }
}