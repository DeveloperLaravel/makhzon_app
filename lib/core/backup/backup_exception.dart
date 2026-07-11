class BackupException implements Exception {
  final String message;
  final Object? cause;

  const BackupException(
    this.message, [
    this.cause,
  ]);

  @override
  String toString() => message;
}