import 'package:flutter/material.dart';

abstract final class AppColors {
  // اللون الأساسي الافتراضي.
  static const Color primary = Color(0xFF1565C0);

  // الوضع الفاتح.
  static const Color lightBackground = Color(0xFFF6F7FB);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightTitle = Color(0xFF172033);
  static const Color lightBody = Color(0xFF424B5F);

  // الوضع الداكن.
  static const Color darkBackground = Color(0xFF0F1115);
  static const Color darkSurface = Color(0xFF181B22);
  static const Color darkTitle = Color(0xFFF4F6FA);
  static const Color darkBody = Color(0xFFCDD2DC);

  // ألوان الحالات.
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFED6C02);
  static const Color error = Color(0xFFD32F2F);
  static const Color info = Color(0xFF0288D1);
}