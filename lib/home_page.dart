import 'package:flutter/material.dart';

import 'package:outlier_value_finder/outlier.dart';
import 'package:outlier_value_finder/result_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final inputController = TextEditingController();

  void _onSearchButtonPressed(BuildContext context) {
    // Konwersja wpisanych wartośći na listę typu int
    final List<int> intNumbers =
        inputController.text.split(",").map((e) => int.parse(e)).toList();

    final int result = IntOutlier(intNumbers).findOutlier();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(result: result),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              TextField(
                controller: inputController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _onSearchButtonPressed(context),
                child: const Text('Wyszukaj'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
