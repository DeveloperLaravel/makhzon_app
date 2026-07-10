import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/add_item_usecase.dart';
import '../../domain/usecases/delete_item_usecase.dart';
import '../../domain/usecases/get_items_usecase.dart';
import '../../domain/usecases/update_item_usecase.dart';
import 'item_event.dart';
import 'item_state.dart';

@injectable
class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final GetItemsUsecase getItems;
  final AddItemUsecase addItem;
  final UpdateItemUsecase updateItem;
  final DeleteItemUsecase deleteItem;

  ItemBloc({
    required this.getItems,
    required this.addItem,
    required this.updateItem,
    required this.deleteItem,
  }) : super(const ItemState.initial()) {
    on<ItemStarted>(_onStarted);
    on<ItemAdded>(_onAdded);
    on<ItemUpdated>(_onUpdated);
    on<ItemDeleted>(_onDeleted);
  }

  Future<void> _onStarted(
    ItemStarted event,
    Emitter<ItemState> emit,
  ) async {
    emit(const ItemState.loading());

    final result = await getItems(const NoParams());

    result.fold(
      (failure) => emit(ItemState.failure(message: failure.message)),
      (items) => emit(ItemState.loaded(items: items)),
    );
  }

  Future<void> _onAdded(
    ItemAdded event,
    Emitter<ItemState> emit,
  ) async {
    final result = await addItem(
      AddItemParams(
        name: event.name,
        unit: event.unit,
        barcode: event.barcode,
        description: event.description,
      ),
    );

    result.fold(
      (failure) => emit(ItemState.failure(message: failure.message)),
      (_) {
        emit(const ItemState.success(message: 'تمت إضافة المادة بنجاح'));
        add(const ItemEvent.started());
      },
    );
  }

  Future<void> _onUpdated(
    ItemUpdated event,
    Emitter<ItemState> emit,
  ) async {
    final result = await updateItem(
      UpdateItemParams(
        id: event.id,
        name: event.name,
        unit: event.unit,
        barcode: event.barcode,
        description: event.description,
      ),
    );

    result.fold(
      (failure) => emit(ItemState.failure(message: failure.message)),
      (_) {
        emit(const ItemState.success(message: 'تم تعديل المادة بنجاح'));
        add(const ItemEvent.started());
      },
    );
  }

  Future<void> _onDeleted(
    ItemDeleted event,
    Emitter<ItemState> emit,
  ) async {
    final result = await deleteItem(event.id);

    result.fold(
      (failure) => emit(ItemState.failure(message: failure.message)),
      (_) {
        emit(const ItemState.success(message: 'تم حذف المادة بنجاح'));
        add(const ItemEvent.started());
      },
    );
  }
}