import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_name.dart';

import '../../../settings/presentation/cubit/theme_cubit.dart';
import '../../../settings/presentation/cubit/theme_state.dart';
import '../../../settings/presentation/widgets/theme_mode_sheet.dart';
import '../../../warehouse/presentation/bloc/warehouse_bloc.dart';
import '../../../warehouse/presentation/bloc/warehouse_state.dart';

import '../../../item/presentation/bloc/item_bloc.dart';
import '../../../item/presentation/bloc/item_state.dart';

import '../../../stock/presentation/bloc/stock_bloc.dart';
import '../../../stock/presentation/bloc/stock_state.dart';

import '../../../issue/presentation/bloc/issue_bloc.dart';
import '../../../issue/presentation/bloc/issue_state.dart';

import '../../../transfer/presentation/bloc/transfer_bloc.dart';
import '../../../transfer/presentation/bloc/transfer_state.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: const Text(
          'لوحة التحكم',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
       actions: [
  BlocBuilder<ThemeCubit, ThemeState>(
    buildWhen: (previous, current) {
      return previous.themeMode != current.themeMode;
    },
    builder: (context, state) {
      final isCurrentlyDark =
          Theme.of(context).brightness == Brightness.dark;

      return IconButton(
        tooltip: 'تغيير المظهر',
        onPressed: () {
          ThemeModeSheet.show(context);
          
        },
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) {
            return RotationTransition(
              turns: animation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          child: Icon(
            isCurrentlyDark
                ? Icons.dark_mode_rounded
                : Icons.light_mode_rounded,
            key: ValueKey(isCurrentlyDark),
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
    icon: const Icon(Icons.cloud_upload_outlined),
  ),

  const SizedBox(width: 8),
],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // يمكنك هنا إعادة إرسال Events التحديث لكل Bloc.
          await Future<void>.delayed(
            const Duration(milliseconds: 400),
          );
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              sliver: SliverToBoxAdapter(
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

            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'نظرة عامة',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              sliver: SliverGrid(
                delegate: SliverChildListDelegate(
                  [
                    BlocBuilder<WarehouseBloc, WarehouseState>(
                      builder: (context, state) {
                        final count = state.maybeWhen(
                          loaded: (warehouses) => warehouses.length,
                          orElse: () => 0,
                        );

                        return _StatisticCard(
                          title: 'المخازن',
                          value: count.toString(),
                          icon: Icons.warehouse_outlined,
                          onTap: () {
                            context.push(RouteNames.warehouses);
                          },
                        );
                      },
                    ),

                    BlocBuilder<ItemBloc, ItemState>(
                      builder: (context, state) {
                        final count = state.maybeWhen(
                          loaded: (items) => items.length,
                          orElse: () => 0,
                        );

                        return _StatisticCard(
                          title: 'المواد',
                          value: count.toString(),
                          icon: Icons.inventory_2_outlined,
                          onTap: () {
                            context.push(RouteNames.items);
                          },
                        );
                      },
                    ),

                    BlocBuilder<StockBloc, StockState>(
                      builder: (context, state) {
                        final count = state.maybeWhen(
                          loaded: (stocks) => stocks.length,
                          orElse: () => 0,
                        );

                        return _StatisticCard(
                          title: 'سجلات المخزون',
                          value: count.toString(),
                          icon: Icons.storage_outlined,
                          onTap: () {
                            context.push(RouteNames.stocks);
                          },
                        );
                      },
                    ),

                    BlocBuilder<IssueBloc, IssueState>(
                      builder: (context, state) {
                        final count = state.maybeWhen(
                          loaded: (issues) => issues.length,
                          orElse: () => 0,
                        );

                        return _StatisticCard(
                          title: 'عمليات السحب',
                          value: count.toString(),
                          icon: Icons.output_outlined,
                          onTap: () {
                            context.push(RouteNames.issue);
                          },
                        );
                      },
                    ),
                  ],
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.25,
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'العمليات السريعة',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    _QuickActionTile(
                      title: 'إضافة أو تعديل مخزن',
                      subtitle: 'إدارة المخازن وأكوادها ومواقعها',
                      icon: Icons.warehouse_outlined,
                      onTap: () {
                        context.push(RouteNames.warehouses);
                      },
                    ),
                    const SizedBox(height: 10),

                    _QuickActionTile(
                      title: 'إضافة مادة',
                      subtitle: 'إضافة مادة جديدة ووحدة القياس والباركود',
                      icon: Icons.add_box_outlined,
                      onTap: () {
                        context.push(RouteNames.items);
                      },
                    ),
                    const SizedBox(height: 10),

                    _QuickActionTile(
                      title: 'إضافة كمية للمخزون',
                      subtitle: 'ربط مادة بمخزن وإضافة كمية',
                      icon: Icons.playlist_add_outlined,
                      onTap: () {
                        context.push(RouteNames.stocks);
                      },
                    ),
                    const SizedBox(height: 10),

                    _QuickActionTile(
                      title: 'سحب مادة',
                      subtitle: 'سحب كمية من مخزن وتسجيل المستلم',
                      icon: Icons.output_outlined,
                      onTap: () {
                        context.push(RouteNames.issue);
                      },
                    ),
                    const SizedBox(height: 10),

                    _QuickActionTile(
                      title: 'تحويل بين المخازن',
                      subtitle: 'نقل مادة من مخزن إلى مخزن آخر',
                      icon: Icons.compare_arrows_rounded,
                      onTap: () {
                        context.push(RouteNames.transfer);
                      },
                    ),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'آخر النشاطات',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              sliver: SliverToBoxAdapter(
                child: BlocBuilder<TransferBloc, TransferState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (transfers) {
                        if (transfers.isEmpty) {
                          return const _EmptyActivityCard();
                        }

                        final recentTransfers = transfers.take(3).toList();

                        return Card(
                          elevation: 0,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              for (var index = 0;
                                  index < recentTransfers.length;
                                  index++) ...[
                                ListTile(
                                  leading: const CircleAvatar(
                                    child: Icon(
                                      Icons.compare_arrows_rounded,
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
                                      recentTransfers[index].quantity,
                                    ),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                if (index != recentTransfers.length - 1)
                                  const Divider(height: 1),
                              ],
                            ],
                          ),
                        );
                      },
                      loading: () => const _LoadingActivityCard(),
                      orElse: () => const _EmptyActivityCard(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static String _formatQuantity(double quantity) {
    if (quantity == quantity.truncateToDouble()) {
      return quantity.toInt().toString();
    }

    return quantity.toStringAsFixed(2);
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
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.primary,
            colorScheme.primaryContainer,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.inventory_rounded,
            size: 42,
            color: colorScheme.onPrimary,
          ),
          const SizedBox(height: 16),
          Text(
            'مرحبًا بك في مخزون',
            style: theme.textTheme.headlineSmall?.copyWith(
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'تابع المخازن والمواد والحركات من مكان واحد.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onPrimary.withValues(alpha: 0.85),
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              FilledButton.tonalIcon(
                onPressed: onAddItem,
                icon: const Icon(Icons.add_box_outlined),
                label: const Text('إضافة مادة'),
              ),
              FilledButton.tonalIcon(
                onPressed: onAddStock,
                icon: const Icon(Icons.playlist_add),
                label: const Text('إضافة مخزون'),
              ),
            ],
          ),
        ],
      ),
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
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: colorScheme.primaryContainer,
                foregroundColor: colorScheme.onPrimaryContainer,
                child: Icon(icon),
              ),
              const Spacer(),
              Text(
                value,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuickActionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _QuickActionTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        leading: CircleAvatar(
          backgroundColor: colorScheme.secondaryContainer,
          foregroundColor: colorScheme.onSecondaryContainer,
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      ),
    );
  }
}

class _EmptyActivityCard extends StatelessWidget {
  const _EmptyActivityCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            const Icon(
              Icons.history_toggle_off_outlined,
              size: 42,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'لا توجد نشاطات حديثة حتى الآن.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadingActivityCard extends StatelessWidget {
  const _LoadingActivityCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}