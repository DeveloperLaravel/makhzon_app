import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/usecase/usecase.dart';

import '../../../item/domain/entities/item_entity.dart';
import '../../../item/domain/usecases/get_items_usecase.dart';
import '../../../warehouse/domain/entities/warehouse_entity.dart';

import '../../../warehouse/domain/usecases/get_warehouses_usecase.dart';
import '../bloc/stock_bloc.dart';
import '../bloc/stock_event.dart';
import '../bloc/stock_state.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  final TextEditingController quantityController = TextEditingController();

  List<WarehouseEntity> warehouses = [];
  List<ItemEntity> items = [];

  WarehouseEntity? selectedWarehouse;
  ItemEntity? selectedItem;

  bool loadingData = true;
  String? loadingError;

  @override
  void initState() {
    super.initState();

    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    try {
      setState(() {
        loadingData = true;
        loadingError = null;
      });

      final warehouseResult =
          await getIt<GetWarehousesUsecase>()(const NoParams());

      final itemResult = await getIt<GetItemsUsecase>()(const NoParams());

      warehouseResult.fold(
        (failure) {
          loadingError = failure.message;
        },
        (data) {
          warehouses = data;
        },
      );

      itemResult.fold(
        (failure) {
          loadingError ??= failure.message;
        },
        (data) {
          items = data;
        },
      );

      if (warehouses.isNotEmpty) {
        selectedWarehouse = warehouses.first;
      }

      if (items.isNotEmpty) {
        selectedItem = items.first;
      }
    } catch (e) {
      loadingError = e.toString();
    } finally {
      if (mounted) {
        setState(() {
          loadingData = false;
        });
      }
    }
  }

  @override
  void dispose() {
    quantityController.dispose();
    super.dispose();
  }

  String _getWarehouseName(int warehouseId) {
    try {
      return warehouses
          .firstWhere(
            (warehouse) => warehouse.id == warehouseId,
          )
          .name;
    } catch (_) {
      return 'مخزن غير معروف';
    }
  }

  String _getItemName(int itemId) {
    try {
      return items
          .firstWhere(
            (item) => item.id == itemId,
          )
          .name;
    } catch (_) {
      return 'مادة غير معروفة';
    }
  }

  String _getItemUnit(int itemId) {
    try {
      return items
          .firstWhere(
            (item) => item.id == itemId,
          )
          .unit;
    } catch (_) {
      return '';
    }
  }

  void _showMessage(
    BuildContext context,
    String message,
  ) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }

  void _openAddStockSheet(BuildContext pageContext) {
    quantityController.clear();

    WarehouseEntity? sheetWarehouse = selectedWarehouse;
    ItemEntity? sheetItem = selectedItem;

    showModalBottomSheet<void>(
      context: pageContext,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (sheetContext) {
        return BlocProvider.value(
          value: pageContext.read<StockBloc>(),
          child: StatefulBuilder(
            builder: (context, setModalState) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 20,
                  bottom:
                      MediaQuery.viewInsetsOf(context).bottom + 20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'إضافة كمية للمخزون',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      DropdownButtonFormField<WarehouseEntity>(
                        // ignore: deprecated_member_use
                        value: sheetWarehouse,
                        decoration: const InputDecoration(
                          labelText: 'اختر المخزن',
                          prefixIcon: Icon(Icons.warehouse_outlined),
                          border: OutlineInputBorder(),
                        ),
                        items: warehouses.map((warehouse) {
                          return DropdownMenuItem<WarehouseEntity>(
                            value: warehouse,
                            child: Text(warehouse.name),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setModalState(() {
                            sheetWarehouse = value;
                          });
                        },
                      ),

                      const SizedBox(height: 16),

                      DropdownButtonFormField<ItemEntity>(
                        // ignore: deprecated_member_use
                        value: sheetItem,
                        decoration: const InputDecoration(
                          labelText: 'اختر المادة',
                          prefixIcon: Icon(Icons.inventory_2_outlined),
                          border: OutlineInputBorder(),
                        ),
                        items: items.map((item) {
                          return DropdownMenuItem<ItemEntity>(
                            value: item,
                            child: Text(
                              '${item.name} - ${item.unit}',
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setModalState(() {
                            sheetItem = value;
                          });
                        },
                      ),

                      const SizedBox(height: 16),

                      TextFormField(
                        controller: quantityController,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        decoration: const InputDecoration(
                          labelText: 'الكمية',
                          hintText: 'مثال: 100',
                          prefixIcon: Icon(Icons.numbers),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 24),

                      SizedBox(
                        height: 52,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            if (sheetWarehouse == null) {
                              _showMessage(
                                pageContext,
                                'اختر المخزن',
                              );
                              return;
                            }

                            if (sheetItem == null) {
                              _showMessage(
                                pageContext,
                                'اختر المادة',
                              );
                              return;
                            }

                            final quantity = double.tryParse(
                              quantityController.text.trim(),
                            );

                            if (quantity == null || quantity <= 0) {
                              _showMessage(
                                pageContext,
                                'أدخل كمية صحيحة أكبر من صفر',
                              );
                              return;
                            }

                            selectedWarehouse = sheetWarehouse;
                            selectedItem = sheetItem;

                            pageContext.read<StockBloc>().add(
                                  StockEvent.quantityAdded(
                                    warehouseId: sheetWarehouse!.id,
                                    itemId: sheetItem!.id,
                                    quantity: quantity,
                                  ),
                                );

                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.save_outlined),
                          label: const Text('حفظ الكمية'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    if (warehouses.isEmpty && items.isEmpty) {
      return const Center(
        child: Text(
          'يجب إضافة مخزن ومادة أولاً',
          textAlign: TextAlign.center,
        ),
      );
    }

    if (warehouses.isEmpty) {
      return const Center(
        child: Text('يجب إضافة مخزن أولاً'),
      );
    }

    if (items.isEmpty) {
      return const Center(
        child: Text('يجب إضافة مادة أولاً'),
      );
    }

    return const Center(
      child: Text('لا توجد بيانات'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المخزون'),
        actions: [
          IconButton(
            tooltip: 'تحديث',
            onPressed: () {
              _loadInitialData();

              context.read<StockBloc>().add(
                    const StockEvent.started(),
                  );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),

      floatingActionButton:
          loadingData || warehouses.isEmpty || items.isEmpty
              ? null
              : FloatingActionButton.extended(
                  onPressed: () {
                    _openAddStockSheet(context);
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('إضافة كمية'),
                ),

      body: loadingData
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : loadingError != null
              ? _StockErrorView(
                  message: loadingError!,
                  onRetry: _loadInitialData,
                )
              : warehouses.isEmpty || items.isEmpty
                  ? _buildEmptyState()
                  : BlocConsumer<StockBloc, StockState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          success: (message) {
                            quantityController.clear();

                            _showMessage(
                              context,
                              message,
                            );
                          },
                          failure: (message) {
                            _showMessage(
                              context,
                              message,
                            );
                          },
                          orElse: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          initial: () {
                            return const Center(
                              child: Text('جاري تجهيز المخزون'),
                            );
                          },

                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },

                          loaded: (stocks) {
                            if (stocks.isEmpty) {
                              return const _EmptyStockView();
                            }

                            return RefreshIndicator(
                              onRefresh: () async {
                                context.read<StockBloc>().add(
                                      const StockEvent.started(),
                                    );
                              },
                              child: ListView.separated(
                                physics:
                                    const AlwaysScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(16),
                                itemCount: stocks.length,
                                // ignore: unnecessary_underscores
                                separatorBuilder: (_, __) {
                                  return const SizedBox(height: 10);
                                },
                                itemBuilder: (context, index) {
                                  final stock = stocks[index];

                                  final itemName = _getItemName(
                                    stock.itemId,
                                  );

                                  final warehouseName =
                                      _getWarehouseName(
                                    stock.warehouseId,
                                  );

                                  final unit = _getItemUnit(
                                    stock.itemId,
                                  );

                                  return Card(
                                    clipBehavior: Clip.antiAlias,
                                    child: ListTile(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      leading: CircleAvatar(
                                        child: Text(
                                          itemName.isNotEmpty
                                              ? itemName[0]
                                              : '?',
                                        ),
                                      ),
                                      title: Text(
                                        itemName,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 6),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.warehouse_outlined,
                                              size: 17,
                                            ),
                                            const SizedBox(width: 5),
                                            Expanded(
                                              child: Text(
                                                warehouseName,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      trailing: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            _formatQuantity(
                                              stock.quantity,
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                ),
                                          ),
                                          if (unit.isNotEmpty)
                                            Text(
                                              unit,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },

                          failure: (message) {
                            return _StockErrorView(
                              message: message,
                              onRetry: () {
                                context.read<StockBloc>().add(
                                      const StockEvent.started(),
                                    );
                              },
                            );
                          },

                          orElse: () {
                            return const SizedBox.shrink();
                          },
                        );
                      },
                    ),
    );
  }

  String _formatQuantity(double quantity) {
    if (quantity == quantity.truncateToDouble()) {
      return quantity.toInt().toString();
    }

    return quantity.toStringAsFixed(2);
  }
}

class _EmptyStockView extends StatelessWidget {
  const _EmptyStockView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.inventory_2_outlined,
              size: 72,
            ),
            SizedBox(height: 16),
            Text(
              'لا يوجد مخزون حتى الآن',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'اضغط على زر إضافة كمية لإضافة مادة إلى أحد المخازن.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _StockErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _StockErrorView({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('إعادة المحاولة'),
            ),
          ],
        ),
      ),
    );
  }
}