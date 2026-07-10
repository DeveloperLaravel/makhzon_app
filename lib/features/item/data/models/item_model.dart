
import 'package:isar_community/isar.dart';

part 'item_model.g.dart';

@collection
class ItemModel {
  Id id = Isar.autoIncrement;

  late String name;
  late String unit;

  String? barcode;
  String? description;

  DateTime createdAt = DateTime.now();
}