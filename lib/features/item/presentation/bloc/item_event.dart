import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_event.freezed.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.started() = ItemStarted;

  const factory ItemEvent.added({
    required String name,
    required String unit,
    String? barcode,
    String? description,
  }) = ItemAdded;

  const factory ItemEvent.updated({
    required int id,
    required String name,
    required String unit,
    String? barcode,
    String? description,
  }) = ItemUpdated;

  const factory ItemEvent.deleted({
    required int id,
  }) = ItemDeleted;
}