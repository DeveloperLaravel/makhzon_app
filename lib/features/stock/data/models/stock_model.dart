import 'package:isar_community/isar.dart';

part 'stock_model.g.dart';

@collection
class StockModel {
  Id id = Isar.autoIncrement;

  late int warehouseId;
  late int itemId;
  late double quantity;

  DateTime updatedAt = DateTime.now();
}