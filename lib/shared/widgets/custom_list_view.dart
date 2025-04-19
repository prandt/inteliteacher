import 'package:flutter/material.dart';

typedef NullableIndexedWidgetBuilder<T> = Widget? Function(
    BuildContext context, T item);

class CustomListView<T> extends StatelessWidget {
  const CustomListView(
      {super.key, required this.items, required this.itemBuilder});

  final List<T> items;
  final NullableIndexedWidgetBuilder<T> itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => itemBuilder(context, items[index]),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: items.length,
    );
  }
}
