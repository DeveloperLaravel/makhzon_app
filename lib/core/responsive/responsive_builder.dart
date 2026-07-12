import 'package:flutter/material.dart';

import 'app_breakpoints.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveBuilder({
    required this.mobile,
    this.tablet,
    this.desktop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        if (width >= AppBreakpoints.desktop) {
          return desktop ?? tablet ?? mobile;
        }

        if (width >= AppBreakpoints.mobile) {
          return tablet ?? mobile;
        }

        return mobile;
      },
    );
  }
}