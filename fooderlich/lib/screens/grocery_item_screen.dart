import 'package:flutter/material.dart';
import 'package:fooderlich/models/grocery_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class GroceryItemScreen extends StatefulWidget {
  const GroceryItemScreen({
    super.key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  }) : isUpdating = (originalItem != null);

  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdate;
  final GroceryItem? originalItem;
  final bool isUpdating;

  @override
  State<GroceryItemScreen> createState() {
    return _GroceryItemScreenState();
  }
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
  // TODO: Add buildNameField()
  // TODO: Add buildImportanceField()
  // TODO: ADD buildDateField()
  // TODO: Add buildTimeField()
  // TODO: Add buildColorPicker()
  // TODO: Add buildQuantityField()
}
