import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int result;
  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 4,
        child: Text(
          '$result',
          style: const TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
