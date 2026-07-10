import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_entity.freezed.dart';

@freezed
abstract class TransferEntity with _$TransferEntity {
  const factory TransferEntity({
    required int id,
    required int fromWarehouseId,
    required int toWarehouseId,
    required int itemId,
    required double quantity,
    String? note,
    required DateTime createdAt,
  }) = _TransferEntity;
}