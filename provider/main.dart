import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_001/counter.dart';
import 'package:provider_001/counter_provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
            create: (build) => CounterProvider())
      ],
      child: const MaterialApp(
        home: Counter(),
      )));
}
