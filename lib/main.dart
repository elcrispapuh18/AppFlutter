import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_profgaby/counter_screen.dart';

void main(List<String> args) {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
