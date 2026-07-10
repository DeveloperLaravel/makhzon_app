import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/issue_repository.dart';

part 'create_issue_usecase.freezed.dart';

@freezed
abstract class CreateIssueParams with _$CreateIssueParams {
  const factory CreateIssueParams({
    required int warehouseId,
    required int itemId,
    required double quantity,
    String? note,
    String? receiverName,
  }) = _CreateIssueParams;
}

@injectable
class CreateIssueUsecase implements Usecase<Unit, CreateIssueParams> {
  final IssueRepository repository;

  CreateIssueUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(CreateIssueParams params) {
    return repository.createIssue(
      warehouseId: params.warehouseId,
      itemId: params.itemId,
      quantity: params.quantity,
      note: params.note,
      receiverName: params.receiverName,
    );
  }
}