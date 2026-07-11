import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';

import '../bloc/backup_bloc.dart';
import '../bloc/backup_event.dart';
import '../bloc/backup_state.dart';

class BackupPage extends StatelessWidget {
  const BackupPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BackupBloc>(),
      child: const _BackupView(),
    );
  }
}

class _BackupView extends StatelessWidget {
  const _BackupView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BackupBloc, BackupState>(
      listenWhen: (previous, current) {
        return previous.successMessage !=
                current.successMessage ||
            previous.errorMessage !=
                current.errorMessage ||
            previous.selectedRestorePath !=
                current.selectedRestorePath;
      },
      listener: (context, state) async {
        final messenger =
            ScaffoldMessenger.of(context);

        if (state.errorMessage != null) {
          messenger
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  state.errorMessage!,
                ),
                backgroundColor:
                    Theme.of(context)
                        .colorScheme
                        .error,
              ),
            );

          context.read<BackupBloc>().add(
                const BackupEvent
                    .messageConsumed(),
              );
        }

        if (state.successMessage != null) {
          messenger
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  state.successMessage!,
                ),
              ),
            );

          context.read<BackupBloc>().add(
                const BackupEvent
                    .messageConsumed(),
              );
        }

        final path =
            state.selectedRestorePath;

        if (path != null) {
          final confirmed =
              await _showRestoreConfirmation(
            context,
            path,
          );

          if (!context.mounted) {
            return;
          }

          if (confirmed) {
            context.read<BackupBloc>().add(
                  BackupEvent.restoreConfirmed(
                    filePath: path,
                  ),
                );
          }
        }
      },
      builder: (context, state) {
        final backup = state.latestBackup;

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'النسخ الاحتياطي',
            ),
          ),
          body: Stack(
            children: [
              ListView(
                padding:
                    const EdgeInsets.all(16),
                children: [
                  const _InformationCard(),

                  const SizedBox(height: 16),

                  FilledButton.icon(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            context
                                .read<BackupBloc>()
                                .add(
                                  const BackupEvent
                                      .createRequested(),
                                );
                          },
                    icon: const Icon(
                      Icons.backup_rounded,
                    ),
                    label: const Text(
                      'إنشاء نسخة احتياطية',
                    ),
                  ),

                  const SizedBox(height: 12),

                  OutlinedButton.icon(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            context
                                .read<BackupBloc>()
                                .add(
                                  const BackupEvent
                                      .pickAndRestoreRequested(),
                                );
                          },
                    icon: const Icon(
                      Icons.restore_rounded,
                    ),
                    label: const Text(
                      'استعادة نسخة احتياطية',
                    ),
                  ),

                  if (backup != null) ...[
                    const SizedBox(height: 24),

                    _BackupDetailsCard(
                      fileName: backup.fileName,
                      createdAt:
                          backup.createdAt,
                      warehouses:
                          backup.warehousesCount,
                      items:
                          backup.itemsCount,
                      stocks:
                          backup.stocksCount,
                      issues:
                          backup.issuesCount,
                      transfers:
                          backup.transfersCount,
                      onShare: state.isLoading
                          ? null
                          : () {
                              context
                                  .read<
                                      BackupBloc>()
                                  .add(
                                    BackupEvent
                                        .shareRequested(
                                      filePath:
                                          backup
                                              .filePath,
                                    ),
                                  );
                            },
                    ),
                  ],

                  const SizedBox(height: 16),

                  const _WarningCard(),
                ],
              ),

              if (state.isLoading)
                const ColoredBox(
                  color: Color(0x33000000),
                  child: Center(
                    child:
                        CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Future<bool> _showRestoreConfirmation(
    BuildContext context,
    String filePath,
  ) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Icon(
            Icons.warning_amber_rounded,
          ),
          title: const Text(
            'تأكيد الاستعادة',
          ),
          content: Text(
            'سيتم حذف البيانات الحالية '
            'واستبدالها بالنسخة المختارة.\n\n'
            '$filePath',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext)
                    .pop(false);
              },
              child: const Text('إلغاء'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(dialogContext)
                    .pop(true);
              },
              child: const Text('استعادة'),
            ),
          ],
        );
      },
    );

    return result ?? false;
  }
}

class _InformationCard extends StatelessWidget {
  const _InformationCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              Icons.security_rounded,
              size: 48,
              color: Theme.of(context)
                  .colorScheme
                  .primary,
            ),
            const SizedBox(height: 12),
            Text(
              'حماية بيانات المخزون',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'أنشئ ملف JSON يحتوي على المخازن '
              'والمواد والمخزون وحركات الصرف '
              'والتحويل، ثم احفظه في Google Drive.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _BackupDetailsCard
    extends StatelessWidget {
  final String fileName;
  final DateTime createdAt;

  final int warehouses;
  final int items;
  final int stocks;
  final int issues;
  final int transfers;

  final VoidCallback? onShare;

  const _BackupDetailsCard({
    required this.fileName,
    required this.createdAt,
    required this.warehouses,
    required this.items,
    required this.stocks,
    required this.issues,
    required this.transfers,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    String twoDigits(int value) {
      return value
          .toString()
          .padLeft(2, '0');
    }

    final formattedDate =
        '${createdAt.year}/'
        '${twoDigits(createdAt.month)}/'
        '${twoDigits(createdAt.day)} '
        '${twoDigits(createdAt.hour)}:'
        '${twoDigits(createdAt.minute)}';

    return Card(
      child: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch,
          children: [
            Text(
              'آخر نسخة تم إنشاؤها',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium,
            ),

            const SizedBox(height: 12),

            SelectableText(fileName),

            const SizedBox(height: 6),

            Text(
              'التاريخ: $formattedDate',
            ),

            const Divider(height: 24),

            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(
                  label: Text(
                    'المخازن: $warehouses',
                  ),
                ),
                Chip(
                  label: Text(
                    'المواد: $items',
                  ),
                ),
                Chip(
                  label: Text(
                    'المخزون: $stocks',
                  ),
                ),
                Chip(
                  label: Text(
                    'الصرف: $issues',
                  ),
                ),
                Chip(
                  label: Text(
                    'التحويلات: $transfers',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            FilledButton.tonalIcon(
              onPressed: onShare,
              icon: const Icon(
                Icons.share_rounded,
              ),
              label: const Text(
                'مشاركة أو حفظ في Drive',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WarningCard extends StatelessWidget {
  const _WarningCard();

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).colorScheme;

    return Card(
      color: colors.errorContainer,
      child: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.info_outline_rounded,
              color:
                  colors.onErrorContainer,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'الاستعادة تستبدل جميع البيانات الحالية. '
                'أنشئ نسخة احتياطية قبل استعادة أي ملف قديم.',
                style: TextStyle(
                  color:
                      colors.onErrorContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}