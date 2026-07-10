import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/add_warehouse_usecase.dart';
import '../../domain/usecases/delete_warehouse_usecase.dart';
import '../../domain/usecases/get_warehouses_usecase.dart';
import '../../domain/usecases/update_warehouse_usecase.dart';
import 'warehouse_event.dart';
import 'warehouse_state.dart';

@injectable
class WarehouseBloc extends Bloc<WarehouseEvent, WarehouseState> {
  final GetWarehousesUsecase getWarehouses;
  final AddWarehouseUsecase addWarehouse;
  final UpdateWarehouseUsecase updateWarehouse;
  final DeleteWarehouseUsecase deleteWarehouse;

  WarehouseBloc({
    required this.getWarehouses,
    required this.addWarehouse,
    required this.updateWarehouse,
    required this.deleteWarehouse,
  }) : super(const WarehouseState.initial()) {
    on<WarehouseStarted>(_onStarted);
    on<WarehouseAdded>(_onAdded);
    on<WarehouseUpdated>(_onUpdated);
    on<WarehouseDeleted>(_onDeleted);
  }

  Future<void> _onStarted(
    WarehouseStarted event,
    Emitter<WarehouseState> emit,
  ) async {
    emit(const WarehouseState.loading());

    final result = await getWarehouses(const NoParams());

    result.fold(
      (failure) => emit(WarehouseState.failure(message: failure.message)),
      (warehouses) => emit(WarehouseState.loaded(warehouses: warehouses)),
    );
  }

  Future<void> _onAdded(
    WarehouseAdded event,
    Emitter<WarehouseState> emit,
  ) async {
    final result = await addWarehouse(
      AddWarehouseParams(
        name: event.name,
        code: event.code,
        location: event.location,
      ),
    );

    result.fold(
      (failure) => emit(WarehouseState.failure(message: failure.message)),
      (_) => add(const WarehouseEvent.started()),
    );
  }

  Future<void> _onUpdated(
    WarehouseUpdated event,
    Emitter<WarehouseState> emit,
  ) async {
    final result = await updateWarehouse(
      UpdateWarehouseParams(
        id: event.id,
        name: event.name,
        code: event.code,
        location: event.location,
      ),
    );

    result.fold(
      (failure) => emit(WarehouseState.failure(message: failure.message)),
      (_) => add(const WarehouseEvent.started()),
    );
  }

  Future<void> _onDeleted(
    WarehouseDeleted event,
    Emitter<WarehouseState> emit,
  ) async {
    final result = await deleteWarehouse(event.id);

    result.fold(
      (failure) => emit(WarehouseState.failure(message: failure.message)),
      (_) => add(const WarehouseEvent.started()),
    );
  }
}