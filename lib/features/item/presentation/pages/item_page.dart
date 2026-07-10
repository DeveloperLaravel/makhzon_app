import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/item_entity.dart';
import '../bloc/item_bloc.dart';
import '../bloc/item_event.dart';
import '../bloc/item_state.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  final searchController = TextEditingController();

  String searchText = '';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message)),
      );
  }

  List<ItemEntity> _filterItems(List<ItemEntity> items) {
    final query = searchText.trim().toLowerCase();

    if (query.isEmpty) {
      return items;
    }

    return items.where((item) {
      final name = item.name.toLowerCase();
      final unit = item.unit.toLowerCase();
      final barcode = item.barcode?.toLowerCase() ?? '';

      return name.contains(query) ||
          unit.contains(query) ||
          barcode.contains(query);
    }).toList();
  }

  void _openItemSheet(
    BuildContext pageContext, {
    ItemEntity? item,
  }) {
    final nameController = TextEditingController(text: item?.name ?? '');
    final unitController = TextEditingController(text: item?.unit ?? '');
    final barcodeController = TextEditingController(text: item?.barcode ?? '');
    final descriptionController =
        TextEditingController(text: item?.description ?? '');

    showModalBottomSheet<void>(
      context: pageContext,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (sheetContext) {
        return BlocProvider.value(
          value: pageContext.read<ItemBloc>(),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 20,
              bottom: MediaQuery.viewInsetsOf(sheetContext).bottom + 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item == null ? 'إضافة مادة' : 'تعديل مادة',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(sheetContext),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'اسم المادة',
                      prefixIcon: Icon(Icons.inventory_2_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 12),

                  TextField(
                    controller: unitController,
                    decoration: const InputDecoration(
                      labelText: 'وحدة القياس',
                      hintText: 'مثال: كرتونة، قطعة، كيلو',
                      prefixIcon: Icon(Icons.straighten),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 12),

                  TextField(
                    controller: barcodeController,
                    decoration: const InputDecoration(
                      labelText: 'الباركود',
                      prefixIcon: Icon(Icons.qr_code),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 12),

                  TextField(
                    controller: descriptionController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'الوصف',
                      prefixIcon: Icon(Icons.description_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 52,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        final name = nameController.text.trim();
                        final unit = unitController.text.trim();
                        final barcode = barcodeController.text.trim();
                        final description =
                            descriptionController.text.trim();

                        if (name.isEmpty) {
                          _showMessage(pageContext, 'اسم المادة مطلوب');
                          return;
                        }

                        if (unit.isEmpty) {
                          _showMessage(pageContext, 'وحدة القياس مطلوبة');
                          return;
                        }

                        if (item == null) {
                          pageContext.read<ItemBloc>().add(
                                ItemEvent.added(
                                  name: name,
                                  unit: unit,
                                  barcode:
                                      barcode.isEmpty ? null : barcode,
                                  description: description.isEmpty
                                      ? null
                                      : description,
                                ),
                              );
                        } else {
                          pageContext.read<ItemBloc>().add(
                                ItemEvent.updated(
                                  id: item.id,
                                  name: name,
                                  unit: unit,
                                  barcode:
                                      barcode.isEmpty ? null : barcode,
                                  description: description.isEmpty
                                      ? null
                                      : description,
                                ),
                              );
                        }

                        Navigator.pop(sheetContext);
                      },
                      icon: Icon(
                        item == null
                            ? Icons.add
                            : Icons.save_outlined,
                      ),
                      label: Text(item == null ? 'إضافة' : 'حفظ التعديل'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _confirmDelete(BuildContext context, ItemEntity item) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('حذف المادة'),
          content: Text('هل تريد حذف "${item.name}"؟'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('إلغاء'),
            ),
            FilledButton(
              onPressed: () {
                context.read<ItemBloc>().add(
                      ItemEvent.deleted(id: item.id),
                    );

                Navigator.pop(dialogContext);
              },
              child: const Text('حذف'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildEmptyView() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.inventory_2_outlined, size: 72),
            SizedBox(height: 16),
            Text(
              'لا توجد مواد',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'اضغط على زر الإضافة لإنشاء أول مادة.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorView(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 64),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                context.read<ItemBloc>().add(
                      const ItemEvent.started(),
                    );
              },
              icon: const Icon(Icons.refresh),
              label: const Text('إعادة المحاولة'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      child: TextField(
        controller: searchController,
        onChanged: (value) {
          setState(() {
            searchText = value;
          });
        },
        decoration: InputDecoration(
          hintText: 'بحث بالاسم أو الوحدة أو الباركود',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: searchText.isEmpty
              ? null
              : IconButton(
                  onPressed: () {
                    searchController.clear();
                    setState(() {
                      searchText = '';
                    });
                  },
                  icon: const Icon(Icons.close),
                ),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildItemsList(List<ItemEntity> items) {
    final filteredItems = _filterItems(items);

    if (filteredItems.isEmpty) {
      return const Expanded(
        child: Center(
          child: Text('لا توجد نتائج للبحث'),
        ),
      );
    }

    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<ItemBloc>().add(
                const ItemEvent.started(),
              );
        },
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: filteredItems.length,
          // ignore: unnecessary_underscores
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final item = filteredItems[index];

            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(
                    item.name.isNotEmpty ? item.name[0] : '?',
                  ),
                ),
                title: Text(
                  item.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  [
                    'الوحدة: ${item.unit}',
                    if (item.barcode != null) 'باركود: ${item.barcode}',
                  ].join('\n'),
                ),
                isThreeLine: item.barcode != null,
                trailing: PopupMenuButton<String>(
                  onSelected: (value) {
                    if (value == 'edit') {
                      _openItemSheet(context, item: item);
                    }

                    if (value == 'delete') {
                      _confirmDelete(context, item);
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
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المواد'),
        actions: [
          IconButton(
            tooltip: 'تحديث',
            onPressed: () {
              context.read<ItemBloc>().add(
                    const ItemEvent.started(),
                  );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openItemSheet(context),
        icon: const Icon(Icons.add),
        label: const Text('إضافة مادة'),
      ),
      body: BlocConsumer<ItemBloc, ItemState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) => _showMessage(context, message),
            failure: (message) => _showMessage(context, message),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (items) {
              if (items.isEmpty) {
                return _buildEmptyView();
              }

              return Column(
                children: [
                  _buildSearchField(),
                  _buildItemsList(items),
                ],
              );
            },
            failure: (message) => _buildErrorView(context, message),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}