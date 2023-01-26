import 'package:flutter/material.dart';

class KotlinPage extends StatelessWidget {
  const KotlinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.deepPurple[500],
      ),
      child: Image.asset(
        'assets/icons/405.png',
        scale: 5,
      ),
    );
  }
}
