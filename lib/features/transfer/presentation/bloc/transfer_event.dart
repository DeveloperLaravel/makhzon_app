import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_event.freezed.dart';

@freezed
class TransferEvent with _$TransferEvent {
  const factory TransferEvent.started() = TransferStarted;

  const factory TransferEvent.created({
    required int fromWarehouseId,
    required int toWarehouseId,
    required int itemId,
    required double quantity,
    String? note,
  }) = TransferCreated;
}