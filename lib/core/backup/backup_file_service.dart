import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import 'backup_constants.dart';
import 'backup_exception.dart';

@lazySingleton
class BackupFileService {
  Future<File> createBackupFile({
    required String jsonContent,
  }) async {
    try {
      final documentsDirectory =
          await getApplicationDocumentsDirectory();

      final backupDirectory = Directory(
        '${documentsDirectory.path}'
        '${Platform.pathSeparator}'
        'backups',
      );

      if (!await backupDirectory.exists()) {
        await backupDirectory.create(
          recursive: true,
        );
      }

      final timestamp = _formatTimestamp(
        DateTime.now(),
      );

      final fileName =
          '${BackupConstants.filePrefix}_$timestamp.'
          '${BackupConstants.fileExtension}';

      final file = File(
        '${backupDirectory.path}'
        '${Platform.pathSeparator}'
        '$fileName',
      );

      return await file.writeAsString(
        jsonContent,
        flush: true,
      );
    } catch (error) {
      throw BackupException(
        'فشل إنشاء ملف النسخة الاحتياطية',
        error,
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

      if (!path.toLowerCase().endsWith(
            '.${BackupConstants.fileExtension}',
          )) {
        throw const BackupException(
          'يجب اختيار ملف بصيغة JSON',
        );
      }

      final content = await file.readAsString();

      if (content.trim().isEmpty) {
        throw const BackupException(
          'ملف النسخة الاحتياطية فارغ',
        );
      }

      return content;
    } on BackupException {
      rethrow;
    } catch (error) {
      throw BackupException(
        'فشل قراءة ملف النسخة الاحتياطية',
        error,
      );
    }
  }

  Future<String?> pickBackupFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: const [
          BackupConstants.fileExtension,
        ],
        allowMultiple: false,
        withData: false,
      );

      if (result == null || result.files.isEmpty) {
        return null;
      }

      final filePath = result.files.single.path;

      if (filePath == null || filePath.trim().isEmpty) {
        throw const BackupException(
          'تعذر الوصول إلى الملف المختار',
        );
      }

      return filePath;
    } on BackupException {
      rethrow;
    } catch (error) {
      throw BackupException(
        'فشل اختيار ملف النسخة الاحتياطية',
        error,
      );
    }
  }

  Future<void> shareBackupFile({
    required String path,
  }) async {
    try {
      final file = File(path);

      if (!await file.exists()) {
        throw const BackupException(
          'ملف النسخة الاحتياطية غير موجود',
        );
      }

      final Uint8List bytes = await file.readAsBytes();

      if (bytes.isEmpty) {
        throw const BackupException(
          'ملف النسخة الاحتياطية فارغ',
        );
      }

      final fileName = file.uri.pathSegments.last;

      final result = await SharePlus.instance.share(
        ShareParams(
          files: [
            XFile.fromData(
              bytes,
              mimeType: BackupConstants.mimeType,
            ),
          ],
          fileNameOverrides: [
            fileName,
          ],
          title: 'نسخة Makhzon الاحتياطية',
        ),
      );

      if (result.status == ShareResultStatus.dismissed) {
        throw const BackupException(
          'تم إلغاء مشاركة النسخة الاحتياطية',
        );
      }
    } on BackupException {
      rethrow;
    } catch (error) {
      throw BackupException(
        'فشل مشاركة النسخة الاحتياطية',
        error,
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