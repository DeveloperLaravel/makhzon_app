import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/router/app_router.dart';
import '../core/theme/app_theme.dart';
import '../features/settings/presentation/cubit/theme_cubit.dart';
import '../features/settings/presentation/cubit/theme_state.dart';

class MakhzonApp extends StatelessWidget {
  const MakhzonApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      buildWhen: (previous, current) {
        return previous.themeMode !=
                current.themeMode ||
            previous.fontScale !=
                current.fontScale ||
            previous.primaryColorValue !=
                current.primaryColorValue ||
            previous.titleColorValue !=
                current.titleColorValue ||
            previous.bodyTextColorValue !=
                current.bodyTextColorValue ||
            previous.useCustomTextColors !=
                current.useCustomTextColors;
      },
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Makhzon',
          themeMode: state.themeMode,
          theme: AppTheme.light(state),
          darkTheme: AppTheme.dark(state),
          routerConfig: appRouter,

          builder: (context, child) {
            final mediaQuery =
                MediaQuery.of(context);

            /*
             * نحترم تكبير الخط من إعدادات الجهاز،
             * ثم نضربه في اختيار المستخدم داخل التطبيق.
             */
            final systemScale =
                mediaQuery.textScaler.scale(16) /
                    16;

            final combinedScale =
                (systemScale * state.fontScale)
                    .clamp(0.80, 2.0);

            return MediaQuery(
              data: mediaQuery.copyWith(
                textScaler:
                    TextScaler.linear(
                  combinedScale,
                ),
              ),
              child: child ??
                  const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}