import 'package:flutter/material.dart';

import 'bloc_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocDemo(),
      title: "Bloc Demo",
    );
  }
}
