import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/create_issue_usecase.dart';
import '../../domain/usecases/get_issues_usecase.dart';
import 'issue_event.dart';
import 'issue_state.dart';

@injectable
class IssueBloc extends Bloc<IssueEvent, IssueState> {
  final GetIssuesUsecase getIssues;
  final CreateIssueUsecase createIssue;

  IssueBloc({
    required this.getIssues,
    required this.createIssue,
  }) : super(const IssueState.initial()) {
    on<IssueStarted>(_onStarted);
    on<IssueCreated>(_onCreated);
  }

  Future<void> _onStarted(
    IssueStarted event,
    Emitter<IssueState> emit,
  ) async {
    emit(const IssueState.loading());

    final result = await getIssues(const NoParams());

    result.fold(
      (failure) => emit(IssueState.failure(message: failure.message)),
      (issues) => emit(IssueState.loaded(issues: issues)),
    );
  }

  Future<void> _onCreated(
    IssueCreated event,
    Emitter<IssueState> emit,
  ) async {
    emit(const IssueState.loading());

    final result = await createIssue(
      CreateIssueParams(
        warehouseId: event.warehouseId,
        itemId: event.itemId,
        quantity: event.quantity,
        note: event.note,
        receiverName: event.receiverName,
      ),
    );

    result.fold(
      (failure) => emit(IssueState.failure(message: failure.message)),
      (_) {
        emit(const IssueState.success(message: 'تم سحب المادة بنجاح'));
        add(const IssueEvent.started());
      },
    );
  }
}