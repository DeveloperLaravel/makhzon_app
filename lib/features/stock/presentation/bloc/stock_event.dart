import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_event.freezed.dart';

@freezed
class StockEvent with _$StockEvent {
  const factory StockEvent.started() = StockStarted;

  const factory StockEvent.quantityAdded({
    required int warehouseId,
    required int itemId,
    required double quantity,
  }) = StockQuantityAdded;
}