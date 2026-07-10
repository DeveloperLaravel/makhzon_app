import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'core/router/app_router.dart';

import 'features/backup/presentation/bloc/backup_bloc.dart';
import 'features/issue/presentation/bloc/issue_bloc.dart';
import 'features/issue/presentation/bloc/issue_event.dart';
import 'features/item/presentation/bloc/item_bloc.dart';
import 'features/warehouse/presentation/bloc/warehouse_bloc.dart';
import 'features/warehouse/presentation/bloc/warehouse_event.dart';

import 'features/transfer/presentation/bloc/transfer_bloc.dart';
import 'features/transfer/presentation/bloc/transfer_event.dart';

import 'features/stock/presentation/bloc/stock_bloc.dart';
import 'features/stock/presentation/bloc/stock_event.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const MakhzonApp());
}

class MakhzonApp extends StatelessWidget {
  const MakhzonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WarehouseBloc>(
          create: (_) => getIt<WarehouseBloc>()
            ..add(const WarehouseEvent.started()),
        ),

        BlocProvider<TransferBloc>(
          create: (_) => getIt<TransferBloc>()
            ..add(const TransferEvent.started()),
        ),

        BlocProvider<StockBloc>(
          create: (_) => getIt<StockBloc>()
            ..add(const StockEvent.started()),
        ),
           BlocProvider<ItemBloc>(
          create: (_) => getIt<ItemBloc>()
        ),
          BlocProvider<IssueBloc>(
  create: (_) => getIt<IssueBloc>()..add(const IssueEvent.started()),
),
BlocProvider<BackupBloc>(
  create: (_) => getIt<BackupBloc>(),
),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Makhzon',
        routerConfig: appRouter,
      ),
    );
  }
}