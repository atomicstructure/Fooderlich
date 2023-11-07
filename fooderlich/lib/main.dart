import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import 'models/models.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
          // TODO: Add GroceryManager Provider
        ],
        child: const Home(),
      ),
    );
  }
}
