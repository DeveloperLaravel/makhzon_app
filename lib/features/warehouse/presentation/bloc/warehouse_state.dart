import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/warehouse_entity.dart';

part 'warehouse_state.freezed.dart';

@freezed
sealed class WarehouseState with _$WarehouseState {
  const factory WarehouseState.initial() = WarehouseInitial;

  const factory WarehouseState.loading() = WarehouseLoading;

  const factory WarehouseState.loaded({
    required List<WarehouseEntity> warehouses,
  }) = WarehouseLoaded;

  const factory WarehouseState.failure({
    required String message,
  }) = WarehouseFailure;
}