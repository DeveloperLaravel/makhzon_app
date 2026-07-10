import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/usecase/usecase.dart';

import '../../../item/domain/entities/item_entity.dart';
import '../../../item/domain/usecases/get_items_usecase.dart';

import '../../../warehouse/domain/entities/warehouse_entity.dart';
import '../../../warehouse/domain/usecases/get_warehouses_usecase.dart';

import '../bloc/issue_bloc.dart';
import '../bloc/issue_event.dart';
import '../bloc/issue_state.dart';

class IssuePage extends StatefulWidget {
  const IssuePage({super.key});

  @override
  State<IssuePage> createState() => _IssuePageState();
}

class _IssuePageState extends State<IssuePage> {
  final quantityController = TextEditingController();
  final receiverController = TextEditingController();
  final noteController = TextEditingController();

  List<WarehouseEntity> warehouses = [];
  List<ItemEntity> items = [];

  WarehouseEntity? selectedWarehouse;
  ItemEntity? selectedItem;

  bool loadingData = true;
  String? loadingError;

  @override
  void initState() {
    super.initState();
    _loadDropdownData();
  }

  Future<void> _loadDropdownData() async {
    try {
      setState(() {
        loadingData = true;
        loadingError = null;
      });

      final warehouseResult =
          await getIt<GetWarehousesUsecase>()(const NoParams());

      final itemResult = await getIt<GetItemsUsecase>()(const NoParams());

      warehouseResult.fold(
        (failure) => loadingError = failure.message,
        (data) => warehouses = data,
      );

      itemResult.fold(
        (failure) => loadingError ??= failure.message,
        (data) => items = data,
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
    receiverController.dispose();
    noteController.dispose();
    super.dispose();
  }

  String _warehouseName(int id) {
    try {
      return warehouses.firstWhere((e) => e.id == id).name;
    } catch (_) {
      return 'مخزن غير معروف';
    }
  }

  String _itemName(int id) {
    try {
      return items.firstWhere((e) => e.id == id).name;
    } catch (_) {
      return 'مادة غير معروفة';
    }
  }

  String _itemUnit(int id) {
    try {
      return items.firstWhere((e) => e.id == id).unit;
    } catch (_) {
      return '';
    }
  }

  String _formatQuantity(double quantity) {
    if (quantity == quantity.truncateToDouble()) {
      return quantity.toInt().toString();
    }

    return quantity.toStringAsFixed(2);
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message)),
      );
  }

  void _submitIssue(BuildContext context) {
    final quantity = double.tryParse(quantityController.text.trim());

    if (selectedWarehouse == null) {
      _showMessage(context, 'اختر المخزن');
      return;
    }

    if (selectedItem == null) {
      _showMessage(context, 'اختر المادة');
      return;
    }

    if (quantity == null || quantity <= 0) {
      _showMessage(context, 'أدخل كمية صحيحة أكبر من صفر');
      return;
    }

    context.read<IssueBloc>().add(
          IssueEvent.created(
            warehouseId: selectedWarehouse!.id,
            itemId: selectedItem!.id,
            quantity: quantity,
            receiverName: receiverController.text.trim().isEmpty
                ? null
                : receiverController.text.trim(),
            note: noteController.text.trim().isEmpty
                ? null
                : noteController.text.trim(),
          ),
        );
  }

  Widget _buildEmptyRequirements() {
    if (warehouses.isEmpty && items.isEmpty) {
      return const Center(child: Text('يجب إضافة مخزن ومادة أولاً'));
    }

    if (warehouses.isEmpty) {
      return const Center(child: Text('يجب إضافة مخزن أولاً'));
    }

    if (items.isEmpty) {
      return const Center(child: Text('يجب إضافة مادة أولاً'));
    }

    return const Center(child: Text('لا توجد بيانات'));
  }

  Widget _buildForm(BuildContext context, IssueState state) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DropdownButtonFormField<WarehouseEntity>(
                // ignore: deprecated_member_use
                value: selectedWarehouse,
                decoration: const InputDecoration(
                  labelText: 'المخزن',
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
                  setState(() {
                    selectedWarehouse = value;
                  });
                },
              ),

              const SizedBox(height: 12),

              DropdownButtonFormField<ItemEntity>(
                // ignore: deprecated_member_use
                value: selectedItem,
                decoration: const InputDecoration(
                  labelText: 'المادة',
                  prefixIcon: Icon(Icons.inventory_2_outlined),
                  border: OutlineInputBorder(),
                ),
                items: items.map((item) {
                  return DropdownMenuItem<ItemEntity>(
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
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  labelText: 'الكمية',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 12),

              TextField(
                controller: receiverController,
                decoration: const InputDecoration(
                  labelText: 'المستلم',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 12),

              TextField(
                controller: noteController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: 'ملاحظة',
                  prefixIcon: Icon(Icons.note_alt_outlined),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton.icon(
                  onPressed: state.maybeWhen(
                    loading: () => null,
                    orElse: () => () => _submitIssue(context),
                  ),
                  icon: const Icon(Icons.output),
                  label: const Text('سحب المادة'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIssuesList(List issues) {
    if (issues.isEmpty) {
      return const Expanded(
        child: Center(
          child: Text('لا توجد عمليات سحب'),
        ),
      );
    }

    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<IssueBloc>().add(const IssueEvent.started());
        },
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: issues.length,
          // ignore: unnecessary_underscores
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final issue = issues[index];

            final unit = _itemUnit(issue.itemId);

            return Card(
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.output),
                ),
                title: Text(_itemName(issue.itemId)),
                subtitle: Text(
                  [
                    'المخزن: ${_warehouseName(issue.warehouseId)}',
                    if (issue.receiverName != null)
                      'المستلم: ${issue.receiverName}',
                    if (issue.note != null) 'ملاحظة: ${issue.note}',
                  ].join('\n'),
                ),
                isThreeLine: true,
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _formatQuantity(issue.quantity),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (unit.isNotEmpty) Text(unit),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildErrorView(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 64),
            const SizedBox(height: 16),
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                _loadDropdownData();
                context.read<IssueBloc>().add(const IssueEvent.started());
              },
              icon: const Icon(Icons.refresh),
              label: const Text('إعادة المحاولة'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سحب المواد'),
        actions: [
          IconButton(
            tooltip: 'تحديث',
            onPressed: () {
              _loadDropdownData();
              context.read<IssueBloc>().add(const IssueEvent.started());
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: loadingData
          ? const Center(child: CircularProgressIndicator())
          : loadingError != null
              ? _buildErrorView(loadingError!)
              : warehouses.isEmpty || items.isEmpty
                  ? _buildEmptyRequirements()
                  : BlocConsumer<IssueBloc, IssueState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          success: (message) {
                            quantityController.clear();
                            receiverController.clear();
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
                        return state.maybeWhen(
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loaded: (issues) {
                            return Column(
                              children: [
                                _buildForm(context, state),
                                const Divider(height: 1),
                                _buildIssuesList(issues),
                              ],
                            );
                          },
                          failure: (message) => _buildErrorView(message),
                          orElse: () => Column(
                            children: [
                              _buildForm(context, state),
                              const Divider(height: 1),
                              const Expanded(
                                child: SizedBox.shrink(),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
    );
  }
}