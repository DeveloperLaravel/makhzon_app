import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/issue_entity.dart';
import '../../domain/repositories/issue_repository.dart';
import '../datasources/issue_local_datasource.dart';
import '../mappers/issue_mapper.dart';

@LazySingleton(as: IssueRepository)
class IssueRepositoryImpl implements IssueRepository {
  final IssueLocalDatasource datasource;

  IssueRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<IssueEntity>>> getIssues() async {
    try {
      final result = await datasource.getIssues();

      return Right(result.map((issue) => issue.toEntity()).toList());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> createIssue({
    required int warehouseId,
    required int itemId,
    required double quantity,
    String? note,
    String? receiverName,
  }) async {
    try {
      if (quantity <= 0) {
        return const Left(Failure('الكمية يجب أن تكون أكبر من صفر'));
      }

      await datasource.createIssue(
        warehouseId: warehouseId,
        itemId: itemId,
        quantity: quantity,
        note: note?.trim().isEmpty == true ? null : note?.trim(),
        receiverName: receiverName?.trim().isEmpty == true
            ? null
            : receiverName?.trim(),
      );

      return const Right(unit);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}