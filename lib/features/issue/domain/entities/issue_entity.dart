import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_entity.freezed.dart';

@freezed
abstract  class IssueEntity with _$IssueEntity {
  const factory IssueEntity({
    required int id,
    required int warehouseId,
    required int itemId,
    required double quantity,
    String? note,
    String? receiverName,
    required DateTime createdAt,
  }) = _IssueEntity;
}