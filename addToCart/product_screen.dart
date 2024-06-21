import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_screen.dart';
import 'package:flutter_application_1/data/products_data.dart';
import 'package:flutter_application_1/provider/cart_notifer.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
   var ob= Provider.of<CartNotifer>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.whatshot_outlined,
          size: 50,
          color: Colors.amber,
        ),
        title: Text(
          "Elite Shopping",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (_)=>CartScreen()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: p_list.length,
        itemBuilder: (context, index) {
          return Card(
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                  color: (index%2==0)?Colors.teal.shade50:Colors.blueAccent.shade100

                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.network(
                      "${p_list[index].p_img}",
                      height: 125,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "${p_list[index].p_name}",
                    ),
                    Text(
                      "\u20B9\t${p_list[index].price}",
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                          ob.addToCart(index);
                      },
                      child: Icon(
                        Icons.add_shopping_cart,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
