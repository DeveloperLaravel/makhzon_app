import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/responsive/responsive_content.dart';
import '../../../../core/router/route_name.dart';

import '../../../issue/presentation/bloc/issue_bloc.dart';
import '../../../issue/presentation/bloc/issue_event.dart';
import '../../../issue/presentation/bloc/issue_state.dart';

import '../../../item/presentation/bloc/item_bloc.dart';
import '../../../item/presentation/bloc/item_event.dart';
import '../../../item/presentation/bloc/item_state.dart';

import '../../../settings/presentation/cubit/theme_cubit.dart';
import '../../../settings/presentation/cubit/theme_state.dart';
import '../../../settings/presentation/widgets/theme_mode_sheet.dart';

import '../../../stock/presentation/bloc/stock_bloc.dart';
import '../../../stock/presentation/bloc/stock_event.dart';
import '../../../stock/presentation/bloc/stock_state.dart';

import '../../../transfer/presentation/bloc/transfer_bloc.dart';
import '../../../transfer/presentation/bloc/transfer_event.dart';
import '../../../transfer/presentation/bloc/transfer_state.dart';

import '../../../warehouse/presentation/bloc/warehouse_bloc.dart';
import '../../../warehouse/presentation/bloc/warehouse_event.dart';
import '../../../warehouse/presentation/bloc/warehouse_state.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor:
          colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: Text(
          'لوحة التحكم',
          style: theme.textTheme.titleLarge,
        ),
        actions: [
          BlocBuilder<ThemeCubit, ThemeState>(
            buildWhen: (previous, current) {
              return previous.themeMode !=
                      current.themeMode ||
                  previous.primaryColorValue !=
                      current.primaryColorValue ||
                  previous.fontScale !=
                      current.fontScale;
            },
            builder: (context, state) {
              final isDark =
                  Theme.of(context).brightness ==
                  Brightness.dark;

              return IconButton(
                tooltip: 'إعدادات المظهر',
                onPressed: () {
                  ThemeModeSheet.show(context);
                },
                icon: AnimatedSwitcher(
                  duration: const Duration(
                    milliseconds: 250,
                  ),
                  transitionBuilder: (
                    child,
                    animation,
                  ) {
                    return RotationTransition(
                      turns: animation,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  child: Icon(
                    isDark
                        ? Icons.dark_mode_rounded
                        : Icons.palette_outlined,
                    key: ValueKey(isDark),
                  ),
                ),
              );
            },
          ),
          IconButton(
            tooltip: 'النسخ الاحتياطي',
            onPressed: () {
              context.push(RouteNames.backup);
            },
            icon: const Icon(
              Icons.cloud_upload_outlined,
            ),
          ),
          SizedBox(
            width: Responsive.value(
              context: context,
              mobile: 4,
              tablet: 8,
              desktop: 12,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => _refreshData(context),
        child: CustomScrollView(
          physics:
              const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: ResponsiveContent(
                padding: EdgeInsets.only(
                  left:
                      Responsive.horizontalPadding(
                        context,
                      ),
                  right:
                      Responsive.horizontalPadding(
                        context,
                      ),
                  top:
                      Responsive.horizontalPadding(
                        context,
                      ),
                ),
                child: _WelcomeCard(
                  onAddItem: () {
                    context.push(RouteNames.items);
                  },
                  onAddStock: () {
                    context.push(RouteNames.stocks);
                  },
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ResponsiveContent(
                padding: EdgeInsets.fromLTRB(
                  Responsive.horizontalPadding(
                    context,
                  ),
                  24,
                  Responsive.horizontalPadding(
                    context,
                  ),
                  12,
                ),
                child: const _SectionTitle(
                  title: 'نظرة عامة',
                  icon: Icons.dashboard_outlined,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ResponsiveContent(
                child: _StatisticsGrid(
                  spacing:
                      Responsive.cardSpacing(context),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ResponsiveContent(
                padding: EdgeInsets.fromLTRB(
                  Responsive.horizontalPadding(
                    context,
                  ),
                  28,
                  Responsive.horizontalPadding(
                    context,
                  ),
                  12,
                ),
                child: const _SectionTitle(
                  title: 'العمليات السريعة',
                  icon:
                      Icons.flash_on_outlined,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ResponsiveContent(
                child: _QuickActionsGrid(
                  spacing:
                      Responsive.cardSpacing(context),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ResponsiveContent(
                padding: EdgeInsets.fromLTRB(
                  Responsive.horizontalPadding(
                    context,
                  ),
                  28,
                  Responsive.horizontalPadding(
                    context,
                  ),
                  12,
                ),
                child: const _SectionTitle(
                  title: 'آخر النشاطات',
                  icon:
                      Icons.history_rounded,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ResponsiveContent(
                padding: EdgeInsets.fromLTRB(
                  Responsive.horizontalPadding(
                    context,
                  ),
                  0,
                  Responsive.horizontalPadding(
                    context,
                  ),
                  32,
                ),
                child: const _RecentActivities(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _refreshData(
    BuildContext context,
  ) async {
    context.read<WarehouseBloc>().add(
      const WarehouseEvent.started(),
    );

    context.read<ItemBloc>().add(
      const ItemEvent.started(),
    );

    context.read<StockBloc>().add(
      const StockEvent.started(),
    );

    context.read<IssueBloc>().add(
      const IssueEvent.started(),
    );

    context.read<TransferBloc>().add(
      const TransferEvent.started(),
    );

    await Future<void>.delayed(
      const Duration(milliseconds: 500),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  final IconData icon;

  const _SectionTitle({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color:
                colorScheme.primaryContainer,
            borderRadius:
                BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 21,
            color:
                colorScheme.onPrimaryContainer,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style:
                theme.textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}

class _StatisticsGrid extends StatelessWidget {
  final double spacing;

  const _StatisticsGrid({
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    final columns =
        Responsive.gridColumns(
          context,
        );

    final childAspectRatio =
        Responsive.value(
          context: context,
          mobile: 1.25,
          tablet: 1.40,
          desktop: 1.55,
        );

    return GridView.count(
      crossAxisCount: columns,
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(),
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      childAspectRatio: childAspectRatio,
      children: [
        BlocBuilder<
          WarehouseBloc,
          WarehouseState
        >(
          buildWhen: (previous, current) {
            return previous != current;
          },
          builder: (context, state) {
            final count = state.maybeWhen(
              loaded: (warehouses) =>
                  warehouses.length,
              orElse: () => 0,
            );

            return _StatisticCard(
              title: 'المخازن',
              value: count.toString(),
              icon:
                  Icons.warehouse_outlined,
              onTap: () {
                context.push(
                  RouteNames.warehouses,
                );
              },
            );
          },
        ),

        BlocBuilder<ItemBloc, ItemState>(
          builder: (context, state) {
            final count = state.maybeWhen(
              loaded: (items) =>
                  items.length,
              orElse: () => 0,
            );

            return _StatisticCard(
              title: 'المواد',
              value: count.toString(),
              icon:
                  Icons.inventory_2_outlined,
              onTap: () {
                context.push(
                  RouteNames.items,
                );
              },
            );
          },
        ),

        BlocBuilder<
          StockBloc,
          StockState
        >(
          builder: (context, state) {
            final count = state.maybeWhen(
              loaded: (stocks) =>
                  stocks.length,
              orElse: () => 0,
            );

            return _StatisticCard(
              title: 'سجلات المخزون',
              value: count.toString(),
              icon: Icons.storage_outlined,
              onTap: () {
                context.push(
                  RouteNames.stocks,
                );
              },
            );
          },
        ),

        BlocBuilder<
          IssueBloc,
          IssueState
        >(
          builder: (context, state) {
            final count = state.maybeWhen(
              loaded: (issues) =>
                  issues.length,
              orElse: () => 0,
            );

            return _StatisticCard(
              title: 'عمليات السحب',
              value: count.toString(),
              icon: Icons.output_outlined,
              onTap: () {
                context.push(
                  RouteNames.issue,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
class _StatisticCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final VoidCallback onTap;

  const _StatisticCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme =
        theme.colorScheme;

    return Card(
      color:
          colorScheme.surfaceContainerLow,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(
            Responsive.value(
              context: context,
              mobile: 14,
              tablet: 18,
              desktop: 20,
            ),
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: Responsive.value(
                  context: context,
                  mobile: 20,
                  tablet: 22,
                  desktop: 24,
                ),
                backgroundColor:
                    colorScheme.primaryContainer,
                foregroundColor:
                    colorScheme.onPrimaryContainer,
                child: Icon(
                  icon,
                  size: Responsive.value(
                    context: context,
                    mobile: 21,
                    tablet: 23,
                    desktop: 25,
                  ),
                ),
              ),
              const Spacer(),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment:
                    AlignmentDirectional.centerStart,
                child: Text(
                  value,
                  style: theme
                      .textTheme
                      .headlineMedium
                      ?.copyWith(
                        fontWeight:
                            FontWeight.w800,
                      ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis,
                style:
                    theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecentActivities
    extends StatelessWidget {
  const _RecentActivities();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      TransferBloc,
      TransferState
    >(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (transfers) {
            if (transfers.isEmpty) {
              return const _EmptyActivityCard();
            }

            final recentTransfers =
                transfers.take(5).toList();

            return Card(
              clipBehavior:
                  Clip.antiAlias,
              child: Column(
                children: [
                  for (
                    var index = 0;
                    index <
                        recentTransfers.length;
                    index++
                  ) ...[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor:
                            Theme.of(context)
                                .colorScheme
                                .tertiaryContainer,
                        foregroundColor:
                            Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                        child: const Icon(
                          Icons
                              .compare_arrows_rounded,
                        ),
                      ),
                      title: Text(
                        'تحويل مادة رقم '
                        '${recentTransfers[index].itemId}',
                      ),
                      subtitle: Text(
                        'من مخزن '
                        '${recentTransfers[index].fromWarehouseId}'
                        ' إلى مخزن '
                        '${recentTransfers[index].toWarehouseId}',
                      ),
                      trailing: Text(
                        _formatQuantity(
                          recentTransfers[index]
                              .quantity,
                        ),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium,
                      ),
                    ),
                    if (index !=
                        recentTransfers.length -
                            1)
                      const Divider(
                        height: 1,
                      ),
                  ],
                ],
              ),
            );
          },
          loading: () =>
              const _LoadingActivityCard(),
          orElse: () =>
              const _EmptyActivityCard(),
        );
      },
    );
  }

  static String _formatQuantity(
    double quantity,
  ) {
    if (quantity ==
        quantity.truncateToDouble()) {
      return quantity.toInt().toString();
    }

    return quantity.toStringAsFixed(2);
  }
}

class _EmptyActivityCard
    extends StatelessWidget {
  const _EmptyActivityCard();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding:
            const EdgeInsets.all(24),
        child: Row(
          children: [
            Icon(
              Icons
                  .history_toggle_off_outlined,
              size: 42,
              color: theme
                  .colorScheme
                  .onSurfaceVariant,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'لا توجد نشاطات حديثة حتى الآن.',
                style:
                    theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadingActivityCard
    extends StatelessWidget {
  const _LoadingActivityCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child:
              CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class _QuickActionsGrid
    extends StatelessWidget {
  final double spacing;

  const _QuickActionsGrid({
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    final actions = [
      _QuickActionData(
        title: 'إضافة أو تعديل مخزن',
        subtitle:
            'إدارة المخازن وأكوادها ومواقعها',
        icon:
            Icons.warehouse_outlined,
        route: RouteNames.warehouses,
      ),
      _QuickActionData(
        title: 'إضافة مادة',
        subtitle:
            'إضافة مادة ووحدة القياس والباركود',
        icon: Icons.add_box_outlined,
        route: RouteNames.items,
      ),
      _QuickActionData(
        title: 'إضافة كمية للمخزون',
        subtitle:
            'ربط مادة بمخزن وإضافة الكمية',
        icon:
            Icons.playlist_add_outlined,
        route: RouteNames.stocks,
      ),
      _QuickActionData(
        title: 'سحب مادة',
        subtitle:
            'سحب كمية وتسجيل اسم المستلم',
        icon: Icons.output_outlined,
        route: RouteNames.issue,
      ),
      _QuickActionData(
        title: 'تحويل بين المخازن',
        subtitle:
            'نقل مادة من مخزن إلى آخر',
        icon:
            Icons.compare_arrows_rounded,
        route: RouteNames.transfer,
      ),
    ];

    final columns =
        Responsive.gridColumns(
          context,
        );

    if (columns == 1) {
      return Column(
        children: [
          for (
            var index = 0;
            index < actions.length;
            index++
          ) ...[
            _QuickActionTile(
              data: actions[index],
            ),
            if (index !=
                actions.length - 1)
              SizedBox(height: spacing),
          ],
        ],
      );
    }

    return GridView.builder(
      itemCount: actions.length,
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            mainAxisSpacing: spacing,
            crossAxisSpacing: spacing,
            mainAxisExtent: 112,
          ),
      itemBuilder: (context, index) {
        return _QuickActionTile(
          data: actions[index],
        );
      },
    );
  }
}

class _QuickActionData {
  final String title;
  final String subtitle;
  final IconData icon;
  final String route;

  const _QuickActionData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.route,
  });
}

class _QuickActionTile
    extends StatelessWidget {
  final _QuickActionData data;

  const _QuickActionTile({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme =
        theme.colorScheme;

    return Card(
      color:
          colorScheme.surfaceContainerLow,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          context.push(data.route);
        },
        child: Padding(
          padding:
              const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor:
                    colorScheme
                        .secondaryContainer,
                foregroundColor:
                    colorScheme
                        .onSecondaryContainer,
                child: Icon(data.icon),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      maxLines: 1,
                      overflow:
                          TextOverflow.ellipsis,
                      style: theme
                          .textTheme
                          .titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      data.subtitle,
                      maxLines: 2,
                      overflow:
                          TextOverflow.ellipsis,
                      style: theme
                          .textTheme
                          .bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons
                    .arrow_forward_ios_rounded,
                size: 17,
                color: colorScheme
                    .onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WelcomeCard extends StatelessWidget {
  final VoidCallback onAddItem;
  final VoidCallback onAddStock;

  const _WelcomeCard({
    required this.onAddItem,
    required this.onAddStock,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme =
        theme.colorScheme;

    final isMobile =
        Responsive.isMobile(context);

    final padding = Responsive.value(
      context: context,
      mobile: 20.0,
      tablet: 28.0,
      desktop: 32.0,
    );

    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.primary,
            colorScheme.primaryContainer,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius:
            BorderRadius.circular(24),
      ),
      child: isMobile
          ? _WelcomeMobileContent(
              onAddItem: onAddItem,
              onAddStock: onAddStock,
            )
          : _WelcomeWideContent(
              onAddItem: onAddItem,
              onAddStock: onAddStock,
            ),
    );
  }
}

class _WelcomeMobileContent
    extends StatelessWidget {
  final VoidCallback onAddItem;
  final VoidCallback onAddStock;

  const _WelcomeMobileContent({
    required this.onAddItem,
    required this.onAddStock,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        const _WelcomeText(),
        const SizedBox(height: 20),
        _WelcomeButtons(
          onAddItem: onAddItem,
          onAddStock: onAddStock,
          expanded: true,
        ),
      ],
    );
  }
}

class _WelcomeWideContent
    extends StatelessWidget {
  final VoidCallback onAddItem;
  final VoidCallback onAddStock;

  const _WelcomeWideContent({
    required this.onAddItem,
    required this.onAddStock,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: _WelcomeText(),
        ),
        const SizedBox(width: 24),
        Flexible(
          flex: 2,
          child: _WelcomeButtons(
            onAddItem: onAddItem,
            onAddStock: onAddStock,
            expanded: false,
          ),
        ),
      ],
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme =
        theme.colorScheme;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: colorScheme.onPrimary
                .withValues(alpha: 0.15),
            borderRadius:
                BorderRadius.circular(18),
          ),
          child: Icon(
            Icons.inventory_rounded,
            size: 32,
            color:
                colorScheme.onPrimary,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'مرحبًا بك في مخزون',
          style:
              theme.textTheme.headlineSmall
                  ?.copyWith(
                    color:
                        colorScheme.onPrimary,
                    fontWeight:
                        FontWeight.w800,
                  ),
        ),
        const SizedBox(height: 8),
        Text(
          'تابع المخازن والمواد والمخزون والحركات من مكان واحد.',
          style:
              theme.textTheme.bodyLarge
                  ?.copyWith(
                    color: colorScheme
                        .onPrimary
                        .withValues(
                          alpha: 0.88,
                        ),
                  ),
        ),
      ],
    );
  }
}

class _WelcomeButtons
    extends StatelessWidget {
  final VoidCallback onAddItem;
  final VoidCallback onAddStock;
  final bool expanded;

  const _WelcomeButtons({
    required this.onAddItem,
    required this.onAddStock,
    required this.expanded,
  });

  @override
  Widget build(BuildContext context) {
    if (expanded) {
      return Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch,
        children: [
          FilledButton.tonalIcon(
            onPressed: onAddItem,
            icon: const Icon(
              Icons.add_box_outlined,
            ),
            label:
                const Text('إضافة مادة'),
          ),
          const SizedBox(height: 10),
          FilledButton.tonalIcon(
            onPressed: onAddStock,
            icon: const Icon(
              Icons.playlist_add,
            ),
            label: const Text(
              'إضافة مخزون',
            ),
          ),
        ],
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        FilledButton.tonalIcon(
          onPressed: onAddItem,
          icon: const Icon(
            Icons.add_box_outlined,
          ),
          label:
              const Text('إضافة مادة'),
        ),
        FilledButton.tonalIcon(
          onPressed: onAddStock,
          icon: const Icon(
            Icons.playlist_add,
          ),
          label:
              const Text('إضافة مخزون'),
        ),
      ],
    );
  }
}