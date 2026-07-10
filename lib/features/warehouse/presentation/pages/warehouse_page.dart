import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/warehouse_entity.dart';
import '../bloc/warehouse_bloc.dart';
import '../bloc/warehouse_event.dart';
import '../bloc/warehouse_state.dart';

class WarehousePage extends StatelessWidget {
  const WarehousePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WarehouseView();
  }
}

class WarehouseView extends StatelessWidget {
  const WarehouseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المخازن'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openWarehouseSheet(context);
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<WarehouseBloc, WarehouseState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (message) => Center(child: Text(message)),
            loaded: (warehouses) {
              if (warehouses.isEmpty) {
                return const Center(child: Text('لا توجد مخازن'));
              }

              return ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: warehouses.length,
                itemBuilder: (context, index) {
                  final warehouse = warehouses[index];

                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.warehouse),
                      title: Text(warehouse.name),
                      subtitle: Text(
                        '${warehouse.code}'
                        '${warehouse.location == null ? '' : ' - ${warehouse.location}'}',
                      ),
                      trailing: PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == 'edit') {
                            _openWarehouseSheet(
                              context,
                              warehouse: warehouse,
                            );
                          }

                          if (value == 'delete') {
                            context.read<WarehouseBloc>().add(
                                  WarehouseEvent.deleted(id: warehouse.id),
                                );
                          }
                        },
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 'edit',
                            child: Text('تعديل'),
                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: Text('حذف'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  void _openWarehouseSheet(
    BuildContext context, {
    WarehouseEntity? warehouse,
  }) {
    final nameController = TextEditingController(
      text: warehouse?.name ?? '',
    );

    final codeController = TextEditingController(
      text: warehouse?.code ?? '',
    );

    final locationController = TextEditingController(
      text: warehouse?.location ?? '',
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<WarehouseBloc>(),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  warehouse == null ? 'إضافة مخزن' : 'تعديل مخزن',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'اسم المخزن',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 12),

                TextField(
                  controller: codeController,
                  decoration: const InputDecoration(
                    labelText: 'كود المخزن',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 12),

                TextField(
                  controller: locationController,
                  decoration: const InputDecoration(
                    labelText: 'الموقع',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      final name = nameController.text.trim();
                      final code = codeController.text.trim();
                      final location = locationController.text.trim();

                      if (name.isEmpty || code.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('الاسم والكود مطلوبان'),
                          ),
                        );
                        return;
                      }

                      if (warehouse == null) {
                        context.read<WarehouseBloc>().add(
                              WarehouseEvent.added(
                                name: name,
                                code: code,
                                location: location.isEmpty ? null : location,
                              ),
                            );
                      } else {
                        context.read<WarehouseBloc>().add(
                              WarehouseEvent.updated(
                                id: warehouse.id,
                                name: name,
                                code: code,
                                location: location.isEmpty ? null : location,
                              ),
                            );
                      }

                      Navigator.pop(context);
                    },
                    child: Text(
                      warehouse == null ? 'حفظ' : 'تحديث',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}