import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/transfer_entity.dart';

part 'transfer_state.freezed.dart';

@freezed
sealed class TransferState with _$TransferState {
  const factory TransferState.initial() = TransferInitial;

  const factory TransferState.loading() = TransferLoading;

  const factory TransferState.loaded({
    required List<TransferEntity> transfers,
  }) = TransferLoaded;

  const factory TransferState.success({
    required String message,
  }) = TransferSuccess;

  const factory TransferState.failure({
    required String message,
  }) = TransferFailure;
}