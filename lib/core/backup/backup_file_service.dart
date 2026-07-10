import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'backup_constants.dart';
import 'backup_exception.dart';

@lazySingleton
class BackupFileService {
  Future<File> createBackupFile({
    required String jsonContent,
  }) async {
    try {
      final directory = await getApplicationDocumentsDirectory();

      final now = DateTime.now();

      final timestamp = _formatTimestamp(now);

      final fileName =
          '${BackupConstants.filePrefix}_$timestamp.${BackupConstants.fileExtension}';

      final file = File(
        '${directory.path}${Platform.pathSeparator}$fileName',
      );

      await file.writeAsString(
        jsonContent,
        flush: true,
      );

      return file;
    } catch (e) {
      throw BackupException(
        'فشل إنشاء ملف النسخة الاحتياطية: $e',
      );
    }
  }

  Future<String> readBackupFile({
    required String path,
  }) async {
    try {
      final file = File(path);

      if (!await file.exists()) {
        throw const BackupException(
          'ملف النسخة الاحتياطية غير موجود',
        );
      }

      return await file.readAsString();
    } catch (e) {
      if (e is BackupException) {
        rethrow;
      }

      throw BackupException(
        'فشل قراءة ملف النسخة الاحتياطية: $e',
      );
    }
  }

  String _formatTimestamp(DateTime dateTime) {
    String twoDigits(int value) {
      return value.toString().padLeft(2, '0');
    }

    return '${dateTime.year}'
        '${twoDigits(dateTime.month)}'
        '${twoDigits(dateTime.day)}_'
        '${twoDigits(dateTime.hour)}'
        '${twoDigits(dateTime.minute)}'
        '${twoDigits(dateTime.second)}';
  }
}