import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooderlich/components/grocery_tile.dart';
import 'package:fooderlich/models/models.dart';

class GroceryListScreen extends StatelessWidget {
  const GroceryListScreen({super.key, required this.manager});

  final GroceryManager manager;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with ListView
    final groceryItems = manager.groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          // TODO: Wrap in a Dismissable
          // TODO: Wrap in an InkWell
          return GroceryTile(
            key: Key(item.id),
            item: item,
            onComplete: (change) {
              if (change != null) {
                manager.completeItem(index, change);
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16.0,
          );
        },
      ),
    );
  }
}
