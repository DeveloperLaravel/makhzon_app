import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/issue_entity.dart';

part 'issue_state.freezed.dart';

@freezed
sealed class IssueState with _$IssueState {
  const factory IssueState.initial() = IssueInitial;

  const factory IssueState.loading() = IssueLoading;

  const factory IssueState.loaded({
    required List<IssueEntity> issues,
  }) = IssueLoaded;

  const factory IssueState.success({
    required String message,
  }) = IssueSuccess;

  const factory IssueState.failure({
    required String message,
  }) = IssueFailure;
}