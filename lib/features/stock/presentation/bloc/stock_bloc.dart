import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/add_stock_quantity_usecase.dart';
import '../../domain/usecases/get_stocks_usecase.dart';
import 'stock_event.dart';
import 'stock_state.dart';

@injectable
class StockBloc extends Bloc<StockEvent, StockState> {
  final GetStocksUsecase getStocks;
  final AddStockQuantityUsecase addStockQuantity;

  StockBloc({
    required this.getStocks,
    required this.addStockQuantity,
  }) : super(const StockState.initial()) {
    on<StockStarted>(_onStarted);
    on<StockQuantityAdded>(_onQuantityAdded);
  }

  Future<void> _onStarted(
    StockStarted event,
    Emitter<StockState> emit,
  ) async {
    emit(const StockState.loading());

    final result = await getStocks(const NoParams());

    result.fold(
      (failure) => emit(StockState.failure(message: failure.message)),
      (stocks) => emit(StockState.loaded(stocks: stocks)),
    );
  }

  Future<void> _onQuantityAdded(
    StockQuantityAdded event,
    Emitter<StockState> emit,
  ) async {
    emit(const StockState.loading());

    final result = await addStockQuantity(
      AddStockQuantityParams(
        warehouseId: event.warehouseId,
        itemId: event.itemId,
        quantity: event.quantity,
      ),
    );

    result.fold(
      (failure) => emit(StockState.failure(message: failure.message)),
      (_) {
        emit(const StockState.success(message: 'تمت إضافة الكمية بنجاح'));
        add(const StockEvent.started());
      },
    );
  }
}