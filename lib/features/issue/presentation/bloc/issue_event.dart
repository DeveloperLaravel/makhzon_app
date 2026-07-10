import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_event.freezed.dart';

@freezed
class IssueEvent with _$IssueEvent {
  const factory IssueEvent.started() = IssueStarted;

  const factory IssueEvent.created({
    required int warehouseId,
    required int itemId,
    required double quantity,
    String? note,
    String? receiverName,
  }) = IssueCreated;
}