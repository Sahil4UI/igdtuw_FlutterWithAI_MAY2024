import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_notifier.dart';
import 'package:provider/provider.dart';

import 'products_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartNotifier(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsPage(),
    ),
  ));
}
