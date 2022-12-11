// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(53, 51, 83, 1),
      body: Column(
        children: [
          Row(
            children: const [
              Text('TESTE'),
              Text('TESTE'),
              Text('TESTE'),
              Text('TESTE'),
            ],
          ),
        ],
      ),
    );
  }
}
