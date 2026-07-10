import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/create_transfer_usecase.dart';
import '../../domain/usecases/get_transfers_usecase.dart';
import 'transfer_event.dart';
import 'transfer_state.dart';

@injectable
class TransferBloc extends Bloc<TransferEvent, TransferState> {
  final GetTransfersUsecase getTransfers;
  final CreateTransferUsecase createTransfer;

  TransferBloc({
    required this.getTransfers,
    required this.createTransfer,
  }) : super(const TransferState.initial()) {
    on<TransferStarted>(_onStarted);
    on<TransferCreated>(_onCreated);
  }

  Future<void> _onStarted(
    TransferStarted event,
    Emitter<TransferState> emit,
  ) async {
    emit(const TransferState.loading());

    final result = await getTransfers(const NoParams());

    result.fold(
      (failure) => emit(TransferState.failure(message: failure.message)),
      (transfers) => emit(TransferState.loaded(transfers: transfers)),
    );
  }

  Future<void> _onCreated(
    TransferCreated event,
    Emitter<TransferState> emit,
  ) async {
    emit(const TransferState.loading());

    final result = await createTransfer(
      CreateTransferParams(
        fromWarehouseId: event.fromWarehouseId,
        toWarehouseId: event.toWarehouseId,
        itemId: event.itemId,
        quantity: event.quantity,
        note: event.note,
      ),
    );

    result.fold(
      (failure) => emit(TransferState.failure(message: failure.message)),
      (_) {
        emit(const TransferState.success(message: 'تم التحويل بنجاح'));
        add(const TransferEvent.started());
      },
    );
  }
}