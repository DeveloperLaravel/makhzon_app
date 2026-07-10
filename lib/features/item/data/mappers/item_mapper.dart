
import 'package:isar_community/isar.dart';

import '../../domain/entities/item_entity.dart';
import '../models/item_model.dart';

extension ItemModelMapper on ItemModel {
  ItemEntity toEntity() {
    return ItemEntity(
      id: id,
      name: name,
      unit: unit,
      barcode: barcode,
      description: description,
      createdAt: createdAt,
    );
  }
}

extension ItemEntityMapper on ItemEntity {
  ItemModel toModel() {
    return ItemModel()
      ..id = id == 0 ? Isar.autoIncrement : id
      ..name = name
      ..unit = unit
      ..barcode = barcode
      ..description = description
      ..createdAt = createdAt;
  }
}