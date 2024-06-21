
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/products_data.dart';
import 'package:flutter_application_1/model/cart.dart';

class CartNotifer extends ChangeNotifier{
   var cartList = [];

   addToCart(index)
   {
      var item = p_list[index];
      cartList.add(Cart(item.p_name, 1 , item.price));
      notifyListeners();
   }
}