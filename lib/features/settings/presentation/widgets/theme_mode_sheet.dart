import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/theme_cubit.dart';
import '../cubit/theme_state.dart';

class ThemeModeSheet {
  static Future<void> show(
    BuildContext context,
  ) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<ThemeCubit>(),
          child:
              const _ThemeSettingsContent(),
        );
      },
    );
  }
}

class _ThemeSettingsContent
    extends StatelessWidget {
  const _ThemeSettingsContent();

  static const List<Color>
      _availableColors = [
    Color(0xFF1565C0),
    Color(0xFF00695C),
    Color(0xFF2E7D32),
    Color(0xFF6A1B9A),
    Color(0xFFC62828),
    Color(0xFFEF6C00),
    Color(0xFF37474F),
    Color(0xFF283593),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.viewInsetsOf(
                  context,
                ).bottom +
                24,
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch,
            children: [
              Text(
                'إعدادات المظهر',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall,
              ),

              const SizedBox(height: 24),

              Text(
                'وضع التطبيق',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium,
              ),

              const SizedBox(height: 8),

              SegmentedButton<ThemeMode>(
                segments: const [
                  ButtonSegment(
                    value: ThemeMode.system,
                    icon: Icon(
                      Icons.settings_suggest,
                    ),
                    label: Text('النظام'),
                  ),
                  ButtonSegment(
                    value: ThemeMode.light,
                    icon: Icon(
                      Icons.light_mode,
                    ),
                    label: Text('فاتح'),
                  ),
                  ButtonSegment(
                    value: ThemeMode.dark,
                    icon: Icon(
                      Icons.dark_mode,
                    ),
                    label: Text('داكن'),
                  ),
                ],
                selected: {
                  state.themeMode,
                },
                onSelectionChanged: (value) {
                  context
                      .read<ThemeCubit>()
                      .changeThemeMode(
                        value.first,
                      );
                },
              ),

              const SizedBox(height: 28),

              Row(
                children: [
                  Expanded(
                    child: Text(
                      'حجم الخط',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium,
                    ),
                  ),
                  Text(
                    '${(state.fontScale * 100).round()}%',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium,
                  ),
                ],
              ),

              Slider(
                min: 0.80,
                max: 1.50,
                divisions: 7,
                value: state.fontScale,
                label:
                    '${(state.fontScale * 100).round()}%',
                onChanged: (value) {
                  context
                      .read<ThemeCubit>()
                      .changeFontScale(value);
                },
              ),

              Container(
                padding:
                    const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .surfaceContainerLow,
                  borderRadius:
                      BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مثال على العنوان',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'هذا مثال لمعاينة حجم ولون النص قبل إغلاق الإعدادات.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              Text(
                'لون التطبيق الرئيسي',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium,
              ),

              const SizedBox(height: 12),

              _ColorSelector(
                colors: _availableColors,
                selectedColor:
                    state.primaryColor,
                onSelected: (color) {
                  context
                      .read<ThemeCubit>()
                      .changePrimaryColor(
                        color,
                      );
                },
              ),

              const SizedBox(height: 24),

              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'ألوان مخصصة للنصوص',
                ),
                subtitle: const Text(
                  'تغيير لون العناوين والنصوص بشكل مستقل',
                ),
                value:
                    state.useCustomTextColors,
                onChanged: (value) {
                  context
                      .read<ThemeCubit>()
                      .changeUseCustomTextColors(
                        value,
                      );
                },
              ),

              if (state.useCustomTextColors) ...[
                const SizedBox(height: 16),

                Text(
                  'لون العناوين',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium,
                ),

                const SizedBox(height: 12),

                _ColorSelector(
                  colors: _availableColors,
                  selectedColor:
                      state.titleColor,
                  onSelected: (color) {
                    context
                        .read<ThemeCubit>()
                        .changeTitleColor(
                          color,
                        );
                  },
                ),

                const SizedBox(height: 24),

                Text(
                  'لون النصوص',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium,
                ),

                const SizedBox(height: 12),

                _ColorSelector(
                  colors: const [
                    Color(0xFF212121),
                    Color(0xFF37474F),
                    Color(0xFF263238),
                    Color(0xFF1A237E),
                    Color(0xFF004D40),
                    Color(0xFF3E2723),
                  ],
                  selectedColor:
                      state.bodyTextColor,
                  onSelected: (color) {
                    context
                        .read<ThemeCubit>()
                        .changeBodyTextColor(
                          color,
                        );
                  },
                ),
              ],

              const SizedBox(height: 32),

              OutlinedButton.icon(
                onPressed: () {
                  context
                      .read<ThemeCubit>()
                      .resetSettings();
                },
                icon: const Icon(
                  Icons.restart_alt_rounded,
                ),
                label: const Text(
                  'إعادة الإعدادات الافتراضية',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ColorSelector extends StatelessWidget {
  final List<Color> colors;
  final Color selectedColor;
  final ValueChanged<Color> onSelected;

  const _ColorSelector({
    required this.colors,
    required this.selectedColor,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: colors.map(
        (color) {
          final selected =
              color.toARGB32() ==
                  selectedColor.toARGB32();

          return InkWell(
            onTap: () {
              onSelected(color);
            },
            borderRadius:
                BorderRadius.circular(50),
            child: AnimatedContainer(
              duration: const Duration(
                milliseconds: 200,
              ),
              width: 46,
              height: 46,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selected
                      ? Theme.of(context)
                          .colorScheme
                          .onSurface
                      : Colors.transparent,
                  width: 3,
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: selected
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    : null,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}