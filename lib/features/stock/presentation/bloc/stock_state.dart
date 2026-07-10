import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/stock_entity.dart';

part 'stock_state.freezed.dart';

@freezed
sealed class StockState with _$StockState {
  const factory StockState.initial() = StockInitial;

  const factory StockState.loading() = StockLoading;

  const factory StockState.loaded({
    required List<StockEntity> stocks,
  }) = StockLoaded;

  const factory StockState.success({
    required String message,
  }) = StockSuccess;

  const factory StockState.failure({
    required String message,
  }) = StockFailure;
}