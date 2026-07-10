import 'package:go_router/go_router.dart';

import '../../features/backup/presentation/pages/backup_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/item/presentation/pages/item_page.dart';
import '../../features/warehouse/presentation/pages/warehouse_page.dart';
import '../../features/stock/presentation/pages/stock_page.dart';
import '../../features/issue/presentation/pages/issue_page.dart';
import '../../features/transfer/presentation/pages/transfer_page.dart';
import 'route_name.dart';

final appRouter = GoRouter(
  initialLocation: RouteNames.dashboard,
  routes: [
    GoRoute(
      path: RouteNames.dashboard,
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      path: RouteNames.warehouses,
      builder: (context, state) => const WarehousePage(),
    ),
    GoRoute(
      path: RouteNames.items,
      builder: (context, state) => const ItemPage(),
    ),
    GoRoute(
      path: RouteNames.stocks,
      builder: (context, state) => const StockPage(),
    ),
    GoRoute(
      path: RouteNames.issue,
      builder: (context, state) => const IssuePage(),
    ),
    GoRoute(
      path: RouteNames.transfer,
      builder: (context, state) => const TransferPage(),
    ),
        GoRoute(
      path: RouteNames.backup,
      builder: (context, state) => const BackupPage(),
    ),
  ],
);