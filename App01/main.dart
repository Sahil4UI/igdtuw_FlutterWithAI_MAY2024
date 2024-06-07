import 'package:flutter/material.dart';
import 'package:my_app01/gradient_Container.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(
      [Colors.cyan, Colors.pink, Colors.orange],
    ),
  )));
}
