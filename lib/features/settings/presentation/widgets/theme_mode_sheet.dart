import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_theme_mode.dart';
import '../cubit/theme_cubit.dart';
import '../cubit/theme_state.dart';

class ThemeModeSheet extends StatelessWidget {
  const ThemeModeSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<ThemeCubit>(),
          child: const ThemeModeSheet(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'مظهر التطبيق',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),

              const SizedBox(height: 16),

              _ThemeModeTile(
                title: 'حسب إعداد الجهاز',
                subtitle: 'يتبع الوضع المستخدم في الهاتف',
                icon: Icons.brightness_auto_outlined,
                value: AppThemeMode.system,
                selectedValue: state.themeMode,
              ),

              _ThemeModeTile(
                title: 'الوضع النهاري',
                subtitle: 'ألوان فاتحة ومريحة في النهار',
                icon: Icons.light_mode_outlined,
                value: AppThemeMode.light,
                selectedValue: state.themeMode,
              ),

              _ThemeModeTile(
                title: 'الوضع الليلي',
                subtitle: 'ألوان داكنة ومريحة في الليل',
                icon: Icons.dark_mode_outlined,
                value: AppThemeMode.dark,
                selectedValue: state.themeMode,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ThemeModeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final AppThemeMode value;
  final AppThemeMode selectedValue;

  const _ThemeModeTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.value,
    required this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    final selected = value == selectedValue;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: selected
            ? colorScheme.primaryContainer
            : colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        child: RadioListTile<AppThemeMode>(
          value: value,
          // ignore: deprecated_member_use
          groupValue: selectedValue,
          // ignore: deprecated_member_use
          onChanged: (newValue) {
            if (newValue == null) return;

            context.read<ThemeCubit>().changeTheme(newValue);
          },
          secondary: Icon(
            icon,
            color: selected
                ? colorScheme.onPrimaryContainer
                : colorScheme.onSurfaceVariant,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(subtitle),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}