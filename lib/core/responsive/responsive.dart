import 'package:flutter/material.dart';

import 'app_breakpoints.dart';
import 'device_type.dart';

abstract final class Responsive {
  static double width(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double height(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }

  static DeviceType deviceType(BuildContext context) {
    final screenWidth = width(context);

    if (screenWidth < AppBreakpoints.mobile) {
      return DeviceType.mobile;
    }

    if (screenWidth < AppBreakpoints.desktop) {
      return DeviceType.tablet;
    }

    return DeviceType.desktop;
  }

  static bool isMobile(BuildContext context) {
    return deviceType(context) == DeviceType.mobile;
  }

  static bool isTablet(BuildContext context) {
    return deviceType(context) == DeviceType.tablet;
  }

  static bool isDesktop(BuildContext context) {
    return deviceType(context) == DeviceType.desktop;
  }

  static T value<T>({
    required BuildContext context,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    switch (deviceType(context)) {
      case DeviceType.mobile:
        return mobile;

      case DeviceType.tablet:
        return tablet ?? mobile;

      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile;
    }
  }

  static double horizontalPadding(BuildContext context) {
    return value(
      context: context,
      mobile: 16,
      tablet: 24,
      desktop: 32,
    );
  }

  static double cardSpacing(BuildContext context) {
    return value(
      context: context,
      mobile: 12,
      tablet: 16,
      desktop: 20,
    );
  }

  static int gridColumns(BuildContext context) {
    return value(
      context: context,
      mobile: 1,
      tablet: 2,
      desktop: 3,
    );
  }

  static double maxContentWidth(BuildContext context) {
    return value(
      context: context,
      mobile: double.infinity,
      tablet: 900,
      desktop: 1200,
    );
  }
}