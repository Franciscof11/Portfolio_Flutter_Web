import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            width: 1200,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.deepPurple[500],
            ),
            child: Image.asset(
              'assets/icons/404.png',
              width: 350,
              height: 350,
            ),
          ),
        ],
      ),
    );
  }
}
