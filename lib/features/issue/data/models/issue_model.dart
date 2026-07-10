import 'package:isar_community/isar.dart';

part 'issue_model.g.dart';

@collection
class IssueModel {
  Id id = Isar.autoIncrement;

  late int warehouseId;
  late int itemId;
  late double quantity;

  String? note;
  String? receiverName;

  DateTime createdAt = DateTime.now();
}