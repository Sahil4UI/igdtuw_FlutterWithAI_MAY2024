import 'package:flutter/material.dart';

import 'data/product_list.dart';

class Cart{
  String id;
  String  name;
  int qty;
  double amt;
  Cart({required this.id,required this.name,this.qty=1,required this.amt});
}

class CartNotifier extends ChangeNotifier{
  final List<Cart> _items = [];
  get items => _items; 

  void addItem(index)
  {
      int found=0;
      for (var ob in _items)
      {
        if (ob.id==product_list[index].p_id)
        {
              ob.qty++;
              _items[index].amt = product_list[index].price* ob.qty;
              notifyListeners();
              found=1;
              break;         
        }
        else{
            found=0;
        }
      }
      
      if(found==0)
      _items.add(Cart(id:product_list[index].p_id,name: product_list[index].p_name,amt: product_list[index].price));
            notifyListeners();
      // _items.forEach((e)=>print(e.qty.toString()+" , "+e.name));
  }
  plusMinus(index,choice){
    (choice=="+")?_items[index].qty++:((_items[index].qty>1)?_items[index].qty--:0);    
     _items[index].amt = product_list[index].price* _items[index].qty;
      notifyListeners();
  }

  removeItem(index)
  {
      _items.removeAt(index);
      notifyListeners();
  }
}


