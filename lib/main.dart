import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/internet_bloc.dart';
import 'bloc/internet_bloc_state.dart';
import 'bloc_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BlocDemo(),
      title: "Bloc Demo",
    );

   /* return BlocProvider(
      create: (_) => InternetBloc(),
      child: const MaterialApp(
        home: BlocDemo(),
        title: "Bloc Demo",
      ),
    );*/
  }
}
