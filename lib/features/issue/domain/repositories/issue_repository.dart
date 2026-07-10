import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/issue_entity.dart';

abstract class IssueRepository {
  Future<Either<Failure, List<IssueEntity>>> getIssues();

  Future<Either<Failure, Unit>> createIssue({
    required int warehouseId,
    required int itemId,
    required double quantity,
    String? note,
    String? receiverName,
  });
}