import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../item/domain/entities/item_entity.dart';
import '../../../item/domain/usecases/get_items_usecase.dart';
import '../../../warehouse/domain/entities/warehouse_entity.dart';
import '../../../warehouse/domain/usecases/get_warehouses_usecase.dart';
import '../bloc/transfer_bloc.dart';
import '../bloc/transfer_event.dart';
import '../bloc/transfer_state.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final quantityController = TextEditingController();
  final noteController = TextEditingController();

  List<WarehouseEntity> warehouses = [];
  List<ItemEntity> items = [];

  WarehouseEntity? fromWarehouse;
  WarehouseEntity? toWarehouse;
  ItemEntity? selectedItem;

  bool loadingData = true;

  @override
  void initState() {
    super.initState();
    _loadDropdownData();
  }

  Future<void> _loadDropdownData() async {
    final warehouseResult =
        await getIt<GetWarehousesUsecase>()(const NoParams());

    final itemResult = await getIt<GetItemsUsecase>()(const NoParams());

    warehouseResult.fold(
      (_) {},
      (data) => warehouses = data,
    );

    itemResult.fold(
      (_) {},
      (data) => items = data,
    );

    if (warehouses.isNotEmpty) {
      fromWarehouse = warehouses.first;
    }

    if (warehouses.length > 1) {
      toWarehouse = warehouses[1];
    }

    if (items.isNotEmpty) {
      selectedItem = items.first;
    }

    setState(() {
      loadingData = false;
    });
  }

  @override
  void dispose() {
    quantityController.dispose();
    noteController.dispose();
    super.dispose();
  }

  void _submitTransfer(BuildContext context) {
    final quantity = double.tryParse(quantityController.text.trim()) ?? 0;

    if (fromWarehouse == null || toWarehouse == null || selectedItem == null) {
      _showMessage(context, 'اختر المخزن والمادة');
      return;
    }

    if (fromWarehouse!.id == toWarehouse!.id) {
      _showMessage(context, 'لا يمكن التحويل إلى نفس المخزن');
      return;
    }

    if (quantity <= 0) {
      _showMessage(context, 'أدخل كمية صحيحة');
      return;
    }

    context.read<TransferBloc>().add(
          TransferEvent.created(
            fromWarehouseId: fromWarehouse!.id,
            toWarehouseId: toWarehouse!.id,
            itemId: selectedItem!.id,
            quantity: quantity,
            note: noteController.text.trim().isEmpty
                ? null
                : noteController.text.trim(),
          ),
        );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  String _warehouseName(int id) {
    return warehouses
        .where((e) => e.id == id)
        .map((e) => e.name)
        .cast<String?>()
        .firstOrNull ??
        'مخزن غير معروف';
  }

  String _itemName(int id) {
    return items
        .where((e) => e.id == id)
        .map((e) => e.name)
        .cast<String?>()
        .firstOrNull ??
        'مادة غير معروفة';
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('تحويل المواد'),
        ),
        body: loadingData
            ? const Center(child: CircularProgressIndicator())
            : BlocConsumer<TransferBloc, TransferState>(
                listener: (context, state) {
                  state.maybeWhen(
                    success: (message) {
                      quantityController.clear();
                      noteController.clear();
                      _showMessage(context, message);
                    },
                    failure: (message) {
                      _showMessage(context, message);
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  if (warehouses.length < 2) {
                    return const Center(
                      child: Text('يجب إضافة مخزنين على الأقل'),
                    );
                  }

                  if (items.isEmpty) {
                    return const Center(
                      child: Text('يجب إضافة صنف أولاً'),
                    );
                  }

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            DropdownButtonFormField<WarehouseEntity>(
                              // ignore: deprecated_member_use
                              value: fromWarehouse,
                              decoration: const InputDecoration(
                                labelText: 'من مخزن',
                                border: OutlineInputBorder(),
                              ),
                              items: warehouses.map((warehouse) {
                                return DropdownMenuItem(
                                  value: warehouse,
                                  child: Text(warehouse.name),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  fromWarehouse = value;
                                });
                              },
                            ),

                            const SizedBox(height: 12),

                            DropdownButtonFormField<WarehouseEntity>(
                              // ignore: deprecated_member_use
                              value: toWarehouse,
                              decoration: const InputDecoration(
                                labelText: 'إلى مخزن',
                                border: OutlineInputBorder(),
                              ),
                              items: warehouses.map((warehouse) {
                                return DropdownMenuItem(
                                  value: warehouse,
                                  child: Text(warehouse.name),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  toWarehouse = value;
                                });
                              },
                            ),

                            const SizedBox(height: 12),

                            DropdownButtonFormField<ItemEntity>(
                              // ignore: deprecated_member_use
                              value: selectedItem,
                              decoration: const InputDecoration(
                                labelText: 'المادة',
                                border: OutlineInputBorder(),
                              ),
                              items: items.map((item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text('${item.name} - ${item.unit}'),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedItem = value;
                                });
                              },
                            ),

                            const SizedBox(height: 12),

                            TextField(
                              controller: quantityController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'الكمية',
                                border: OutlineInputBorder(),
                              ),
                            ),

                            const SizedBox(height: 12),

                            TextField(
                              controller: noteController,
                              decoration: const InputDecoration(
                                labelText: 'ملاحظة',
                                border: OutlineInputBorder(),
                              ),
                            ),

                            const SizedBox(height: 16),

                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: state.maybeWhen(
                                  loading: () => null,
                                  orElse: () => () => _submitTransfer(context),
                                ),
                                child: state.maybeWhen(
                                  loading: () =>
                                      const CircularProgressIndicator(),
                                  orElse: () => const Text('تنفيذ التحويل'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Divider(),

                      Expanded(
                        child: state.maybeWhen(
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loaded: (transfers) {
                            if (transfers.isEmpty) {
                              return const Center(
                                child: Text('لا توجد تحويلات'),
                              );
                            }

                            return ListView.builder(
                              itemCount: transfers.length,
                              itemBuilder: (context, index) {
                                final transfer = transfers[index];

                                return Card(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  child: ListTile(
                                    leading: const Icon(Icons.compare_arrows),
                                    title: Text(_itemName(transfer.itemId)),
                                    subtitle: Text(
                                      'من: ${_warehouseName(transfer.fromWarehouseId)}'
                                      ' → إلى: ${_warehouseName(transfer.toWarehouseId)}',
                                    ),
                                    trailing: Text(
                                      transfer.quantity.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          failure: (message) => Center(child: Text(message)),
                          orElse: () => const SizedBox(),
                        ),
                      ),
                    ],
                  );
                },
              ),
    );
  }
}