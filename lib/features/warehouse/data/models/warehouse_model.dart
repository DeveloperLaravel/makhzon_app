import 'package:isar_community/isar.dart';

part 'warehouse_model.g.dart';

@collection
class WarehouseModel {
  Id id = Isar.autoIncrement;

  late String name;
  late String code;

  String? location;

  DateTime createdAt = DateTime.now();
}