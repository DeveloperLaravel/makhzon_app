import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_entity.freezed.dart';

@freezed
abstract class StockEntity with _$StockEntity {
  const factory StockEntity({
    required int id,
    required int warehouseId,
    required int itemId,
    required double quantity,
    required DateTime updatedAt,
  }) = _StockEntity;
}