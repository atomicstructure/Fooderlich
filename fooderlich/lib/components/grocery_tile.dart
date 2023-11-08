import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:intl/intl.dart';
import '../models/grocery_item.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem item;
  final Function(bool?)? onComplete;
  final TextDecoration textDecoration;

  GroceryTile({super.key, required this.item, this.onComplete})
      : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    // TODO: Change this widget
    return Container(
      height: 100,
      // TODO: Replace this color
      color: Colors.red,
    );
  }
  // TODO: Add BuildImportance()
  // TODO: Add buildDate()
  // TODO: Add buildCheckbox()
}
