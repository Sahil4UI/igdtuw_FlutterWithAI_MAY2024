
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier
{
   int _counter = 0;
   get counter => _counter;

   changeValue()
   {
      _counter++;
      notifyListeners();
   }
}