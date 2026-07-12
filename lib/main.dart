import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'core/di/injection.dart';

import 'features/issue/presentation/bloc/issue_bloc.dart';
import 'features/issue/presentation/bloc/issue_event.dart';

import 'features/item/presentation/bloc/item_bloc.dart';
import 'features/item/presentation/bloc/item_event.dart';

import 'features/settings/presentation/cubit/theme_cubit.dart';

import 'features/stock/presentation/bloc/stock_bloc.dart';
import 'features/stock/presentation/bloc/stock_event.dart';

import 'features/transfer/presentation/bloc/transfer_bloc.dart';
import 'features/transfer/presentation/bloc/transfer_event.dart';

import 'features/warehouse/presentation/bloc/warehouse_bloc.dart';
import 'features/warehouse/presentation/bloc/warehouse_event.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  final themeCubit = getIt<ThemeCubit>();

  await themeCubit.loadSettings();

  runApp(
    MakhzonProviders(
      themeCubit: themeCubit,
    ),
  );
}

class MakhzonProviders extends StatelessWidget {
  final ThemeCubit themeCubit;

  const MakhzonProviders({
    required this.themeCubit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>.value(
          value: themeCubit,
        ),

        BlocProvider<WarehouseBloc>(
          create: (_) {
            return getIt<WarehouseBloc>()
              ..add(
                const WarehouseEvent.started(),
              );
          },
        ),

        BlocProvider<ItemBloc>(
          create: (_) {
            return getIt<ItemBloc>()
              ..add(
                const ItemEvent.started(),
              );
          },
        ),

        BlocProvider<StockBloc>(
          create: (_) {
            return getIt<StockBloc>()
              ..add(
                const StockEvent.started(),
              );
          },
        ),

        BlocProvider<IssueBloc>(
          create: (_) {
            return getIt<IssueBloc>()
              ..add(
                const IssueEvent.started(),
              );
          },
        ),

        BlocProvider<TransferBloc>(
          create: (_) {
            return getIt<TransferBloc>()
              ..add(
                const TransferEvent.started(),
              );
          },
        ),
      ],
      child: const MakhzonApp(),
    );
  }
}