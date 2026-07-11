import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/router/app_router.dart';
import '../core/theme/app_theme.dart';

import '../features/settings/presentation/cubit/theme_cubit.dart';
import '../features/settings/presentation/cubit/theme_state.dart';

class MakhzonApp extends StatelessWidget {
  const MakhzonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      buildWhen: (previous, current) {
        return previous.themeMode != current.themeMode;
      },
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Makhzon',

          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,

          themeMode: context.read<ThemeCubit>().materialThemeMode,

          routerConfig: appRouter,
        );
      },
    );
  }
}