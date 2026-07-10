
import 'package:isar_community/isar.dart';

part 'transfer_model.g.dart';

@collection
class TransferModel {
  Id id = Isar.autoIncrement;

  late int fromWarehouseId;
  late int toWarehouseId;
  late int itemId;
  late double quantity;

  String? note;

  DateTime createdAt = DateTime.now();
}