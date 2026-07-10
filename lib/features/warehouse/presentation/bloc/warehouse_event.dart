import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_event.freezed.dart';

@freezed
class WarehouseEvent with _$WarehouseEvent {
  const factory WarehouseEvent.started() = WarehouseStarted;

  const factory WarehouseEvent.added({
    required String name,
    required String code,
    String? location,
  }) = WarehouseAdded;

  const factory WarehouseEvent.updated({
    required int id,
    required String name,
    required String code,
    String? location,
  }) = WarehouseUpdated;

  const factory WarehouseEvent.deleted({
    required int id,
  }) = WarehouseDeleted;
}