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
  // TODO: Add grocery item screen state properties

  final _nameController = TextEditingController();
  String _name = '';
  Importance _importance = Importance.low;
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  Color _currentColor = Colors.green;
  int _currentSliderValue = 0;

  // TODO: Add initState()
  @override
  void initState() {
    super.initState();

    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _currentSliderValue = originalItem.quantity;
      _importance = originalItem.importance;
      _currentColor = originalItem.color;
      final date = originalItem.date;
      _timeOfDay = TimeOfDay(
        hour: date.hour,
        minute: date.minute,
      );
      _dueDate = date;
    }
    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });
  }

  // TODO: Add dispose()
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Add callback handler
            },
            icon: const Icon(Icons.check),
          )
        ],
        elevation: 0.0,
        title: Text(
          'Grocery Item',
          style: GoogleFonts.lato(fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // TODO: Add name TextField
            buildNameField(),
            // TODO: Add Importance selection
            buildImportanceField()
            // TODO: Add date picker
            // TODO: Add time picker
            // TODO: Add color picker
            // TODO: Add slider
            // TODO: Add Grocery Tile
          ],
        ),
      ),
    );
  }

  // TODO: Add buildNameField()
  Widget buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Item name',
          style: GoogleFonts.lato(fontSize: 28.0),
        ),
        TextField(
          controller: _nameController,
          cursorColor: _currentColor,
          decoration: InputDecoration(
            hintText: 'E.g. Apples, Banana, 1 Bag of salt',
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: _currentColor),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: _currentColor),
            ),
          ),
        ),
      ],
    );
  }

  // TODO: Add buildImportanceField()
  Widget buildImportanceField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Importance',
          style: GoogleFonts.lato(fontSize: 28.0),
        ),
        Wrap(
          spacing: 10.0,
          children: [
            ChoiceChip(
              label: const Text(
                'low',
                style: TextStyle(color: Colors.white),
              ),
              selectedColor: Colors.black,
              selected: _importance == Importance.low,
              onSelected: (selected) {
                setState(() {
                  _importance == Importance.low;
                });
              },
            ),
            ChoiceChip(
              label: const Text(
                'medium',
                style: TextStyle(color: Colors.white),
              ),
              selectedColor: Colors.black,
              selected: _importance == Importance.medium,
              onSelected: (selected) {
                setState(() {
                  _importance = Importance.medium;
                });
              },
            ),
            ChoiceChip(
              label: const Text(
                'high',
                style: TextStyle(color: Colors.white),
              ),
              selectedColor: Colors.black,
              selected: _importance == Importance.high,
              onSelected: (selected) {
                setState(() {
                  _importance = Importance.high;
                });
              },
            )
          ],
        )
      ],
    );
  }
  // TODO: ADD buildDateField()
  // TODO: Add buildTimeField()
  // TODO: Add buildColorPicker()
  // TODO: Add buildQuantityField()
}
