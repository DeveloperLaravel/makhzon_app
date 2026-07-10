import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/item_entity.dart';

part 'item_state.freezed.dart';

@freezed
sealed class ItemState with _$ItemState {
  const factory ItemState.initial() = ItemInitial;

  const factory ItemState.loading() = ItemLoading;

  const factory ItemState.loaded({
    required List<ItemEntity> items,
  }) = ItemLoaded;

  const factory ItemState.success({
    required String message,
  }) = ItemSuccess;

  const factory ItemState.failure({
    required String message,
  }) = ItemFailure;
}