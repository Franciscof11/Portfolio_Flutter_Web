import 'package:aoop/pages/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyPort());
}

class MyPort extends StatefulWidget {
  const MyPort({super.key});

  @override
  State<MyPort> createState() => _MyPortState();
}

class _MyPortState extends State<MyPort> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
