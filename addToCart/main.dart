import 'package:flutter/material.dart';
import 'package:flutter_application_1/product_screen.dart';
import 'package:flutter_application_1/provider/cart_notifer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<CartNotifer>(create: (_)=> CartNotifer()),
    ],
    child: MaterialApp(home: const ProductScreen()),),
  );
}
