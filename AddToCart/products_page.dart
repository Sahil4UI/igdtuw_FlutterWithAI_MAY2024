import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_screen.dart';
import 'package:flutter_application_1/data/product_list.dart';
import 'package:provider/provider.dart';

import 'cart_notifier.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    var obj=Provider.of<CartNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.beach_access,
          size: 50,
        ),
        title: const Text(
          "Elite Shoppy",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (_)=>const CartScreen()));
            },
            icon:const  Icon(
              Icons.shopping_bag,
            ),
          ),
          Text(obj.items.length.toString()+"\t\t")
        ],
        backgroundColor: Color.fromARGB(255, 173, 230, 250),
      ),
      body: ListView.builder(
        itemCount: product_list.length,
        itemBuilder:(context,index){
            return ListTile(
              title: Text(product_list[index].p_name) ,
              subtitle: Text("\u{20B9}\t"+product_list[index].price.toString()),
              trailing: IconButton(onPressed: (){
                obj.addItem(index);
              },
               icon: const Icon(Icons.add_shopping_cart)),
            );
      },),
    );
  }
}
