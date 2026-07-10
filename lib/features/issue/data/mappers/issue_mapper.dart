import 'package:isar_community/isar.dart';

import '../../domain/entities/issue_entity.dart';
import '../models/issue_model.dart';

extension IssueModelMapper on IssueModel {
  IssueEntity toEntity() {
    return IssueEntity(
      id: id,
      warehouseId: warehouseId,
      itemId: itemId,
      quantity: quantity,
      note: note,
      receiverName: receiverName,
      createdAt: createdAt,
    );
  }
}

extension IssueEntityMapper on IssueEntity {
  IssueModel toModel() {
    return IssueModel()
      ..id = id == 0 ? Isar.autoIncrement : id
      ..warehouseId = warehouseId
      ..itemId = itemId
      ..quantity = quantity
      ..note = note
      ..receiverName = receiverName
      ..createdAt = createdAt;
  }
}