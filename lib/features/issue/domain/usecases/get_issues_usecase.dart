import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/issue_entity.dart';
import '../repositories/issue_repository.dart';

@injectable
class GetIssuesUsecase implements Usecase<List<IssueEntity>, NoParams> {
  final IssueRepository repository;

  GetIssuesUsecase(this.repository);

  @override
  Future<Either<Failure, List<IssueEntity>>> call(NoParams params) {
    return repository.getIssues();
  }
}