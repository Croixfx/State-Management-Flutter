import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_state.dart';
import 'counter_page.dart';  

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterState(),
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      home: CounterPage(),
    );
  }
}