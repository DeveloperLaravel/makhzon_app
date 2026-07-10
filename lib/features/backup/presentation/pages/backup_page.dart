import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/backup_bloc.dart';
import '../bloc/backup_event.dart';
import '../bloc/backup_state.dart';

class BackupPage extends StatelessWidget {
  const BackupPage({super.key});

  void _showMessage(
    BuildContext context,
    String message,
  ) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('النسخ الاحتياطي'),
      ),
      body: BlocConsumer<BackupBloc, BackupState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) {
              _showMessage(context, message);
            },
            failure: (message) {
              _showMessage(context, message);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Icon(
                Icons.cloud_upload_outlined,
                size: 90,
              ),

              const SizedBox(height: 20),

              const Text(
                'النسخ الاحتياطي لبيانات المخازن',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'أنشئ نسخة احتياطية تحتوي على المخازن والمواد '
                'والمخزون وعمليات السحب والتحويلات.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 32),

              SizedBox(
                height: 52,
                child: FilledButton.icon(
                  onPressed: isLoading
                      ? null
                      : () {
                          context.read<BackupBloc>().add(
                                const BackupEvent.backupCreated(),
                              );
                        },
                  icon: const Icon(Icons.backup_outlined),
                  label: const Text('إنشاء نسخة احتياطية'),
                ),
              ),

              const SizedBox(height: 16),

              if (isLoading)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: CircularProgressIndicator(),
                  ),
                ),

              state.maybeWhen(
                created: (backup) {
                  return Card(
                    margin: const EdgeInsets.only(top: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.check_circle_outline),
                              SizedBox(width: 8),
                              Text(
                                'تم إنشاء النسخة',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          Text('اسم الملف: ${backup.fileName}'),

                          const SizedBox(height: 8),

                          Text(
                            'المخازن: ${backup.warehousesCount}',
                          ),

                          Text(
                            'المواد: ${backup.itemsCount}',
                          ),

                          Text(
                            'سجلات المخزون: ${backup.stocksCount}',
                          ),

                          Text(
                            'عمليات السحب: ${backup.issuesCount}',
                          ),

                          Text(
                            'التحويلات: ${backup.transfersCount}',
                          ),

                          const SizedBox(height: 20),

                          FilledButton.icon(
                            onPressed: () {
                              context.read<BackupBloc>().add(
                                    BackupEvent.backupShared(
                                      filePath: backup.filePath,
                                    ),
                                  );
                            },
                            icon: const Icon(Icons.share_outlined),
                            label: const Text(
                              'مشاركة إلى Gmail أو Drive',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                orElse: () => const SizedBox.shrink(),
              ),
            ],
          );
        },
      ),
    );
  }
}