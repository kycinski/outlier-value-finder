import 'package:flutter/material.dart';

import 'package:outlier_value_finder/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Outlier Finder',
      home: HomePage(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.indigo.shade100,
          primarySwatch: Colors.deepOrange),
    );
  }
}
