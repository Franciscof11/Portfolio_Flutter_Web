import 'package:flutter/material.dart';
import 'package:my_portfolio/Pages/app_structure.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Francisco Gabriel Portfólio',
      home: AppStructure(),
    );
  }
}
